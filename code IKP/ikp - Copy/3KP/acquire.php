<?php session_start(); ?>
<!DOCTYPE html>
<html lang="vi">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Ngân hàng thanh toán</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" href="../style.css">
		<link href="https://fonts.googleapis.com/css2?family=Lato:wght@700&family=Rubik+Dirt&family=Space+Grotesk&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
		<link rel="stylesheet" href="../fontawesome-free-6.2.0-web/css/all.min.css">
	</head>
	<body>
		<div class="hv_dad hv_dad_3kp">
		<main class="bg-gray-dark d-flex flex-auto flex-column overflow-hidden position-relative">
			<div class="space">
				<div class="stars"></div>
				<div class="stars"></div>
				<div class="stars"></div>
				<div class="stars"></div>
				<div class="stars"></div>
				<div class="stars"></div>
			</div>
		</main>
		<?php 
				// if(isset($_POST['pubkey_merchant'])){
				// 	$_SESSION['pubkey_merchant'] = $_POST['pubkey_merchant'];
				// }
		
				// if($_POST['sign_merchant']){
				// 	$_SESSION['sign_merchant'] = $_POST['sign_merchant'];
				// }
		
				// if($_POST['messages_merchant']){
				// 	$_SESSION['messages_merchant'] = $_POST['messages_merchant'];
				// }

				// if(isset($_POST['pubKey_buyer'])){
				// 	$_SESSION['pubKey_buyer'] = $_POST['pubKey_buyer'];
				// }
		
				// if($_POST['sign_buyer']){
				// 	$_SESSION['sign_buyer'] = $_POST['sign_buyer'];
				// }
		
				// if($_POST['data_idb']){
				// 	$_SESSION['data_idb'] = $_POST['data_idb'];
				// }
		echo '<pre>';
		echo $_POST;
		echo '</pre>';
		
			if(isset($_POST['pubkey_merchant']) && isset($_POST['sign_merchant']) && isset($_POST['messages_merchant']) && isset($_POST['pubKey_buyer']) && isset($_POST['sign_buyer'])) {
				$pubkey_merchant = $_POST['pubkey_merchant'];
				$sign_merchant = $_POST['sign_merchant'];
				$messages_merchant = $_POST['messages_merchant'];
				$pubKey_buyer = $_POST['pubKey_buyer'];
				$sign_buyer = $_POST['sign_buyer'];
				$data_idb = $_POST['data_idb'];
				$_SESSION['pubkey_merchant'] = $_POST['pubkey_merchant'];
				$_SESSION['sign_merchant'] = $_POST['sign_merchant'];
				$_SESSION['messages_merchant'] = $_POST['messages_merchant'];
				$_SESSION['pubKey_buyer'] = $_POST['pubKey_buyer'];
				$_SESSION['sign_buyer'] = $_POST['sign_buyer'];
				$_SESSION['data_idb'] = $_POST['data_idb'];
			} else {
				$pubkey_merchant = $_SESSION['pubkey_merchant'];
				$sign_merchant = $_SESSION['sign_merchant'];
				$messages_merchant = $_SESSION['messages_merchant'];
				$pubKey_buyer = $_SESSION['pubKey_buyer'];
				$sign_buyer = $_SESSION['sign_buyer'];
				$data_idb = $_SESSION['data_idb'];
			}
		 ?>
		 <div class="col-md-12">
		 	<form method="POST" role="form" class="form-group">
			<div class="col-md-12">
				<h1 class="hv_td">Acquirer tiến hành kiểm tra chữ ký các bên</h1>
			</div>

			<div class="form-group col-md-6">
				<h2>Chữ ký của Buyer</h2>
				<textarea name="sign_buyer" class="form-control" rows="10"><?php if(isset($sign_buyer)) echo $sign_buyer ?></textarea>
			</div>

			<div class="form-group col-md-6">
				<h2>Chữ ký của Merchant</h2>
				<textarea name="sign_merchant" class="form-control" rows="10"><?php if(isset($_SESSION['sign_merchant'])) echo $_SESSION['sign_merchant']; ?></textarea>
			</div>
			
			<div class="form-group col-md-6">
				<h1 class="hv_td">ID khách hàng </h1>
				<input type="text" class="form-control hv_box_mess" name="data_idb" value="<?php if(isset($_SESSION['data_idb'])) echo $_SESSION['data_idb']; ?>">
				<h1 class="hv_td">Thông điệp mã hoá</h1>
				<textarea  name="data" class="form-control col-md-6" rows="10"><?php if(isset($_SESSION['messages_merchant'])) echo $_SESSION['messages_merchant']; ?></textarea>
				<input type="text" style='display:none' class="form-control hv_box_mess" name="messages" value="<?php if(isset($_SESSION['messages_merchant'])) echo $_SESSION['messages_merchant']; ?>">
			</div>
			<input type="hidden" name="pubKey_buyer" value="<?php if (isset($pubKey_buyer)) {
					echo $pubKey_buyer;
			} ?>">
			<input type="hidden" name="pubKey_merchant" value="<?php if(isset($pubkey_merchant))
			echo $pubkey_merchant; ?>">
			<div class="col-md-6 hv_check_ac3kp" style='positon:relative'>
				<?php 
					
					if(isset($_POST['check_acquirer'])) {
						include('../config.php');
						$select = "select * from 3KP where name='acquirer'";
						$query1 = mysqli_query($conn,$select);
						$data2 = mysqli_fetch_assoc($query1);
						if($data2 === NULL) {
							$data_acquire = $_POST['messages_acquire'];
							if($data_acquire !='') {
							$data1 = hash("MD5", $data_acquire);
							$opensslConfigPath = "C:\xampp\apache\conf\openssl.cnf";
							$config = array(
						"config" => $opensslConfigPath,
						"digest_alg" => "sha512",
						"private_key_bits" => 4096,
						"private_key_type" => OPENSSL_KEYTYPE_RSA,
						);

							$res = openssl_pkey_new($config); // <-- CONFIG ARRAY

							if (empty($res)) {return false;}

					// Extract the private key from $res to $privKey
							openssl_pkey_export($res, $privKey_acquire, NULL, $config); //CONFIG ARRAY

						// Extract the public key from $res to $pubKey
						$pubKey_acquire = openssl_pkey_get_details($res);
						if ($pubKey_acquire === FALSE){return false;}

							$res = openssl_private_encrypt($data1, $sign_acquire, $privKey_acquire,OPENSSL_PKCS1_PADDING);
							if ($res === FALSE){return false;}
					
						}
							else {
								echo "Chưa có dữ liệu vào";
							}
							$pubKey_acquire = $pubKey_acquire['key'];
							$sql = "insert into 3kp(stt,name,privKey,pubKey) values('','acquirer','".$privKey_acquire."','".$pubKey_acquire."')";
							$query = mysqli_query($conn,$sql);
						}
						else{
							$privKey_acquire = $data2['privKey'];
                			$pubKey_acquire = $data2['pubKey'];
							$data = $_POST['messages'];
							$idb_compare = $_POST['data_idb'];
							if (isset($data)) {
								$data1 = hash('sha512',$data);
								$opensslConfigPath = "C:\xampp\apache\conf\openssl.cnf";
								$config = array(
								"config" => $opensslConfigPath,
								"digest_alg" => "sha512",
								"private_key_bits" => 4096,
								"private_key_type" => OPENSSL_KEYTYPE_RSA,
								);
								$sign_merchant = $_POST['sign_merchant'];
								$sign_buyer = $_POST['sign_buyer'];
								openssl_public_decrypt(base64_decode($sign_merchant),$check_sign_merchant,$pubkey_merchant);
								openssl_public_decrypt(base64_decode($sign_buyer),$check_sign_buyer,$pubKey_buyer);
								
								if ($data1 === $check_sign_merchant && $data1 === $check_sign_buyer) {
									// openssl_private_decrypt($check_sign_buyer,$check_idb_buyer,$privKey_acquire);
									// openssl_private_decrypt($check_sign_merchant,$check_idb_merchant,$privKey_acquire);
									openssl_private_decrypt(base64_decode($data),$check_idb_data,$privKey_acquire);
									$datahash = hash('sha512',$check_idb_data);
									if( $idb_compare === $datahash ){
										echo "<span class='hv_confirm' style='color:#0f0;font-size:40px'><i class=\"fa-sharp fa-solid fa-circle-check\"></i> Chữ ký đúng</span>";
										
									}
									else{
										
										echo "<span class='hv_confirm' style='color:#0f0;font-size:40px'><i class=\"fa-sharp fa-solid fa-circle-check\"></i> Chữ ký đúng sai</span>";
									}
								}
								else {
									
									echo "<span class='hv_confirm' style='color:red;font-size:40px'><i class=\"fa-sharp fa-solid fa-circle-xmark\"></i> Chữ ký không đúng</span>";
								
								}
								}
							}
						
					}
						
				?>
				<button type="submit" name="check_acquirer"  class="form-group hv_btn_sent"><span>Kiểm tra chữ ký và thông điệp</span></button>
			</div>
			
			</form>
			</div>
			
            <div class="col-md-12">
		 	<form method="post" class="form-group">
		 		<div class="col-md-6 form-group">
		 			<h1 class="hv_td">Thông điệp từ Acquire</h1>
		 			<input type="text" name="messages_acquire" class="form-control hv_box_mess" value="<?php if(isset($_POST['messages_acquire'])) echo $_POST['messages_acquire']; ?>">
		 		</div>
		 		<div class="col-md-12">
					 <button type="submit" name="sign_acquire"  class="form-group hv_btn_sent hv_2kp_check"><span>Tạo khoá và ký</span></button>
		 		</div>
		 	</form>
		 	<?php 
		 		if(isset($_POST['sign_acquire'])) {
		 			include('../config.php');
					$select = "select * from 3KP where name='acquirer'";
		            $query1 = mysqli_query($conn,$select);
		            $data2 = mysqli_fetch_assoc($query1);
		            if($data2 === NULL) {
		 			$data_acquire = $_POST['messages_acquire'];
		 			 if($data_acquire !='') {
                  	$data1 = hash("MD5", $data_acquire);
                  	$opensslConfigPath = "C:\xampp\apache\conf\openssl.cnf";
                  	$config = array(
                    "config" => $opensslConfigPath,
                    "digest_alg" => "sha512",
                    "private_key_bits" => 4096,
                    "private_key_type" => OPENSSL_KEYTYPE_RSA,
                    );

                  	$res = openssl_pkey_new($config); // <-- CONFIG ARRAY

                  	if (empty($res)) {return false;}

                // Extract the private key from $res to $privKey
                  	openssl_pkey_export($res, $privKey_acquire, NULL, $config); //CONFIG ARRAY

                  // Extract the public key from $res to $pubKey
                	$pubKey_acquire = openssl_pkey_get_details($res);
                	if ($pubKey_acquire === FALSE){return false;}

                  	$res = openssl_private_encrypt($data1, $sign_acquire, $privKey_acquire,OPENSSL_PKCS1_PADDING);
              		if ($res === FALSE){return false;}
              
                	}
              		else {
               			 echo "Chưa có dữ liệu vào";
              		}
              		$pubKey_acquire = $pubKey_acquire['key'];
            		$sql = "insert into 3kp(stt,name,privKey,pubKey) values('','acquirer','".$privKey_acquire."','".$pubKey_acquire."')";
             		$query = mysqli_query($conn,$sql);
		 		}
		 		else {
		 			$privKey_acquire = $data2['privKey'];
                	$pubKey_acquire = $data2['pubKey'];
                	$data = $_POST['messages_acquire'];
                	if($data !='') {
                  	$data1 = hash("MD5", $data);
                  	$opensslConfigPath = "C:\xampp\apache\conf\openssl.cnf";
                  	$config = array(
                    "config" => $opensslConfigPath,
                    "digest_alg" => "sha512",
                    "private_key_bits" => 4096,
                    "private_key_type" => OPENSSL_KEYTYPE_RSA,
                    );
                  $res = openssl_private_encrypt($data1, $sign_acquire, $privKey_acquire,OPENSSL_PKCS1_PADDING);

		 		}
		 	}
		 }
		 	 ?>
		 	 
		 </div>
		 <div class="col-md-12">
		 <form action="merchant_info.php" class="form-group" method="post">
		 	<div class="col-md-6 form-group">
		 			<h2>Chữ ký số</h2>
		 			<textarea name="sign_acquire" class="form-control" rows="10">
		 			<?php if (isset($sign_acquire)) {
		 				echo base64_encode($sign_acquire);
		 			} ?>
		 		</textarea>
		 		
		 		
		 	</div>
		 	<div class="col-md-6 form-group">
		 		<h2>Khóa công khai Acquire</h2>
		 		<textarea name="pubKey_acquire" class="form-control" rows="10">
		 			<?php if(isset($pubKey_acquire)) echo $pubKey_acquire; ?>
		 		</textarea>
		 	</div>
		 	<input type="hidden" name="messages_acquirer" value="<?php if(isset($_POST['messages_acquire'])) echo $_POST['messages_acquire']; ?>">
		 	<input type="hidden" name="pubKey_merchant" value="<?php if(isset($pubkey_merchant)) echo $pubkey_merchant; ?>">
		 	
			<button type="submit" name=""  class="form-group hv_btn_sent hv_2kp_check"><span>Gửi phản hồi Merchant</span></button>
		 </form>
		 </div>
		</div>

	</body>
</html>