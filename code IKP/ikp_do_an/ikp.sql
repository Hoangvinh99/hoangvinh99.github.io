-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2016 at 04:30 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ikp`
--

-- --------------------------------------------------------

--
-- Table structure for table `1kp`
--

CREATE TABLE IF NOT EXISTS `1kp` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `privKey` text COLLATE utf8_unicode_ci NOT NULL,
  `pubKey` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`stt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `1kp`
--

INSERT INTO `1kp` (`stt`, `name`, `privKey`, `pubKey`) VALUES
(1, 'acquirer', '-----BEGIN PRIVATE KEY-----\n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\nehs4hmziRhIkiec1xLhvEnFwi9vVoaY=\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAt6xeAr0IScQjUBQGSUkh\nSePOIahTMxPSu2IUif0qu8vIoPAlzDvmSqlU6eMswcKZzBi3c+BpVXck/KvARsJT\nFubBM1VSX9q2FJaOcYpvlDrmhwyh1L4nS0/GNxQ+DchNgYIOPRrAW8jarnzCPout\nfFQ5rcR7LDpjICZYOWtKnIGcqAZLno4NWed5yiqHbnSYd6fldtRDxVHHAV4y4zuy\nWoRJlcoYyH7sN8sKKGXVB6D95C3Fs9/GmtawqblOzjlWtkpScltcBJXXYoYANtq2\nHh9WH65CUZ3LUEHnRjI8MmAosLq1loKdkA3ZXfj/zJFIAkXXklUpvpmX7MRUxEiD\nJK/guFh+CwZ29xjtfH7nwuWjKgUWKPqID5WzbjHun5DPza/DT7YomwRpRaVwc/0c\n4RJKStnIYKDpoqNlH8w3wsO5teS73+x9Xrc5+5E0b/pDRd2PZoscuG9uFwm9hDyt\nq6nhcHGxUsm+MX40IFaHiWwRiy88cjUVweltNGW+a0qYL2HPrigEqjCBfBqrccbA\njP69nZBd3bBhUsghhw1ooQcGy5u3h6GhASNfPLE0eQvO36pld4sSmPnu8R6ZbEId\n+A8WspUnfLaLliXyn9d/eFF7MEQH+vffs81AdPrldMuFp4udeJ+KjdSMtDC0AN4Q\nMztPq0pWES2Sw5f0Z6bP8tkCAwEAAQ==\n-----END PUBLIC KEY-----\n');

-- --------------------------------------------------------

--
-- Table structure for table `2kp`
--

CREATE TABLE IF NOT EXISTS `2kp` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `privKey` text COLLATE utf8_unicode_ci NOT NULL,
  `pubKey` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`stt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `2kp`
--

INSERT INTO `2kp` (`stt`, `name`, `privKey`, `pubKey`) VALUES
(7, 'merchant', '-----BEGIN PRIVATE KEY-----\nMIIJQwIBADANBgkqhkiG9w0BAQEFAASCCS0wggkpAgEAAoICAQDGAweJTujNx4dX\ngy22IWZwtaiAwWMR+2yns2Gd503vdM+jg0p5ViFqIn2skb/Ss0w7hEvtmHSOGYYk\nGqDlXmhPiET8gi4yL83i4ZgcnXVVu/P7XDQMBOmOLnJrPEPQogX9lON0pfEZvfp0\ns6HspvnG6vEm3s8Vvhw4LO3bnyORBfTITq9zKnKxgSoclrDmB4cngkArROXP/J1M\nXW5HVETH7IF3OLnPqAJnFI/21OYO5mPawVjo2mEQLWO1PIRR7/jbk64jylVdlKBQ\ng4Q79pVDwiHIEIAoi17hoeyIjiVrF0niH45YHet+L9BoCmTOyXV2PCwhFu5UByxC\nEearGyWHZs5iyGkusSiJoF69oBay+mR0gclGsG8JOxgZrUa0H7vq2EZDnAT8I7wi\nFbOmqckVLeM25XVsmPVieNLbP+4azcQXfnNQpMerjWgYwJWKvp8Mmxj1q1VfG79+\nSvt08BSocTeigp4WwhZNRLG7YqLBTg8ykg5zIyWze9W7UaDXTj6OxT5KF7mZ7wEr\nyQ3B/dDE+3prRzLYttib9vWS3WQj8N3ee40rgacQdVJ61PytYkG3itNAaxRaBLss\n/Y/k69oGAgvNt6HmclCf4AE32kou6ErBzbi/GpHJGGSpgrp36NJdy1inLhxnfNUl\n7JaCMcNWteDoqJ7vIB0XlSWZauhcGQIDAQABAoICAQCAAztfEK2/Q4yDDiKCScuR\neE+sldm3qWUQcg7c58nh0hHe8yU1lnJZzFyVMVDjJdlV7OyteU95ApVPSAvW3Zbw\nO/fliz/UYEVptVECxuUxfSZ5zZ00XASmT+7W1wo8mlLnItd99T4O11xREETR2w1G\nBWPMLmWQ9+wEgT9xKcvzmPcsfHo/KSUnDossGlvZCurcpv9XOd6c/QKweQKviJJC\n8eqtKfYugr6y538/I1psLZRGu5MATxZLQBzi8XHWCx9GzY3aQ5e2vTx7cNsPbRYI\nzTvLvKcuDxRTKLzjd4pHVrIER0ReQVGarcy9RmLvsRyISNR6u/luR4jcWfhXjGBQ\nqakg8ljDVwY2wCzRMzqLkWHoyX9VT+fekP1k2bavOr3zTas9nEOS2OZ4E7a3Houn\nq7Fm6QRMWk0QnUrAD91xMrWiYKFOz5X0DjT6kyKUTK0ka/z2tq0bNHFFpN23buXe\nf5bzWncSBxwxLp65a3csJxPGXhMOVrg+6a2I62BfQnqndvNzbbjxjMBLDjWpa1Zn\n7Uo+XFlM2R1vdGCIdVLFGP2w+2fvCrcnR3mY6ytzoturca3gsqcN8vfr9/9HKoyh\nIAyp8HIWcEC57St4g/ETh41YzcJw43r0+ETiy9An1dM9mjx+2h1S9q3z4KRaLbAM\n4seZ7Krm/O2m1PYe5S37tQKCAQEA+Fj/qsoEvdz/lvoRmn8pWq6T7q6g2UyuaYcS\nd4kjWI9IMuwRdxWmTUTVf8YiSf3fIR8oBwwW53GN+hAsKuWLxrYPDyhKP8/NZTEA\nGlMXe18hpZDzuO08WNrnC4oE+TVPsPWHNiGKq8KTy1sP/Y1Kyt6+ZPdUjzfgUUs+\nn0sUV+he2DgW6ee+0gyPSvBBELP1xMnXwUMVHIlFGeIvx7i3ly9Z+Hgy30JvjjF5\nIKuUbvvBrKo9BC1soU9FJc2zJJxKLinr0eGXR076PlGRYuJPzQB+xsoyuz6yMbXx\nQaKyCF4C0C87cpy5s7cgvcufI21kFryK/uCkp0AtcDUnZZyANwKCAQEAzBz5hrVo\nLHsP5fPc2SQwJWPlcrxM/TLb7BLc6H0C8q7NGbJeCZfR8NN11AraTdsjDqmjXUDN\nPvJ5d8w3Xw2E2HoUBaE5yJe6K0dEM1rh0H6TCGw6Qw78CjShdU6GJDFcSGvmis8L\nNolUJ3xux2FLVW63LCUqOn1Q7x6mMEm4xSFAkwuDxKdgv8+FCj2T3k3k79/rLFJH\nuuZLBButiXQ7Tr8m3sKQzVPTSNlz/jv4HxO5YLFk/drMDDEUYUhUSseyN28kWTFD\nEEG/Q1Xj0m7p77b+iFdYdvZgPUkaN69+WZGrWdd9GyB439xFr2qf2tx6ltlqLLty\nd1YiPfKwGhy+LwKCAQEAjSjxMZ+gcFbkhGlhhiKPW/btKPbjgIAghuT6ry0pBRZ0\nIFWkW77XhwYAIJ97L/l4UXhHJTJO9oDKBYAZysws1eb3ylLJWVoBUmo2t7/REhPx\nqQ0qK0vVSGAsgZeS2h/eSyRUFYWdL6HqpeT9ws4D3CodqIAY9Ur6WtrdHmfriUgQ\nWPAQviU2hmgTLrI/GYJgyNk9pKE/p7eyqlKxe+FXoTyN9DhGGjbF99nREqvUM/0v\nibg99FjpbQsEr8cq8z1OwMydOO/0L9kJTlDIxZ8DYu/MH6wgh+PMH4teNUOH1E+z\nY6flL3E78JW/q4HI07dC89V5YARKMrK84RGlchExowKCAQAZ5y9vfgQbaP6qgxkq\n4WHOzO+ocOcgVtz8B6TLSFogbDiRI0a11vOIqX1RjJMJwF6hlLursPabH3B02JDK\nWk/anRt/X2eS4lZ4+ZFZJxZzPCzyq7F1IyivLuCyn2V8oFsCwda/FOlqYWExpaP1\nX46M6AEM9CZ4x8CGqBAVHrX5JnAoeRSe11L65J4Qn6HtW1tLadJRjJuXx3QLsGuE\nfyCrrKyFJpHzzMiKfTYwNHIXl4w2Di0v3h15Cp14fxJbbx5Z1Jv7SbomDQH1zKed\n4/+CMWn56YPLjRbHkEhoergBK/Bf9W3mDGfqmOyrB1AEGWjhTfQgeyVaqa6sx+i7\nV5x3AoIBABUmnMFybYJU1LpCFSInSFkVsHAjuLRMGbjLiv8/KROciJcyjkFYtvZi\nxvgfOXicE57yGFX3crPlvchUUVVQylM+zkd7q0DVARWLYb7bdL1feZNulTzMzkLO\nEXfaSFtTL/+ET+ZRCQ1RtiBLTjYAy6KUL6SaGPhxbWucyal8NVDmZTV3/QyXaOWx\nZatL5JufzNZ5u9GHYP2Q/UoQjQ8Gm6NAWS5bk9S6tcJDZi9R7OMUwQwyU3JDEseI\nBgEh8yY+IH0GWujCUm1RjRAM5Ws5qpOJk2zNRcP2iogHHcizha+/BHmvAGuB2rCp\nPsX85uMsj/v858TD04GGDYwDpKQ98j4=\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAxgMHiU7ozceHV4MttiFm\ncLWogMFjEftsp7NhnedN73TPo4NKeVYhaiJ9rJG/0rNMO4RL7Zh0jhmGJBqg5V5o\nT4hE/IIuMi/N4uGYHJ11Vbvz+1w0DATpji5yazxD0KIF/ZTjdKXxGb36dLOh7Kb5\nxurxJt7PFb4cOCzt258jkQX0yE6vcypysYEqHJaw5geHJ4JAK0Tlz/ydTF1uR1RE\nx+yBdzi5z6gCZxSP9tTmDuZj2sFY6NphEC1jtTyEUe/425OuI8pVXZSgUIOEO/aV\nQ8IhyBCAKIte4aHsiI4laxdJ4h+OWB3rfi/QaApkzsl1djwsIRbuVAcsQhHmqxsl\nh2bOYshpLrEoiaBevaAWsvpkdIHJRrBvCTsYGa1GtB+76thGQ5wE/CO8IhWzpqnJ\nFS3jNuV1bJj1YnjS2z/uGs3EF35zUKTHq41oGMCVir6fDJsY9atVXxu/fkr7dPAU\nqHE3ooKeFsIWTUSxu2KiwU4PMpIOcyMls3vVu1Gg104+jsU+She5me8BK8kNwf3Q\nxPt6a0cy2LbYm/b1kt1kI/Dd3nuNK4GnEHVSetT8rWJBt4rTQGsUWgS7LP2P5Ova\nBgILzbeh5nJQn+ABN9pKLuhKwc24vxqRyRhkqYK6d+jSXctYpy4cZ3zVJeyWgjHD\nVrXg6Kie7yAdF5UlmWroXBkCAwEAAQ==\n-----END PUBLIC KEY-----\n'),
(8, 'acquirer', '-----BEGIN PRIVATE KEY-----\n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\nyTxr8YXlZfds4HkQ/67hr61cWZSFO6Q=\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAro1gDPBDMB7eguMfIVxi\nr6NiUVXgn4g+AE3sOyFv7vG1qxaQc9jDdZbc8w7U5xJK0eRpLxM4ifrF8VrLYd72\nHI82TZchP3hmFbZzbuQlXM4e02jzlKWexGxsMWMWZ8UAcydjwfXM4gHM2knf3H8e\nimzHjLl3c/jkfS2NxN4g97eVA7VwqC2FuTuTEDOF4N/sHrgwSBj8jMZNuMka9pGe\nmIeiWKwgCp0t973wUFB0mW95m/lJ6p9XVezfxkzpTABE5JsdgRA6CkAfVU+0zbOd\nujOZKQUvhOJIPwUoLmX00HPJBhHzPbFiejZvnM3UP6XI4kG8SFGu2sGpsOr/pRcp\nrY5tPKJ+o2I9Lvf4+0YWEUNZJciu1EZ+AM7M/rMirW0IO6Q056wrg9/Nfr4LmaHi\nbzLz+nqaHW/qqGriJn6VtAWnNeiifzS5oyBYENlxFyEJEyimChPvzgRamUKEI2tV\n0zazQ19s5rSxDZLpnMTP8IMmway7z4e4GfM4c9eDXBO4lLbFst280Bd9HJOFADRy\nkja+cHK5SaVMzQro8xQP4zzUZX8MjUTH8IM5Np1qr2yD5aL/fNwBY5o+vfrsNkMW\nvWnSjfvoPuZy6KZTAspdiYp10MKn7ll+RcaUbTbPYlnKygAervx8YoMThA8guK7F\ndtfHI6M9aZzAXU4RMLnA0iECAwEAAQ==\n-----END PUBLIC KEY-----\n');

-- --------------------------------------------------------

--
-- Table structure for table `3kp`
--

CREATE TABLE IF NOT EXISTS `3kp` (
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `privKey` text COLLATE utf8_unicode_ci NOT NULL,
  `pubKey` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`stt`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `3kp`
--

INSERT INTO `3kp` (`stt`, `name`, `privKey`, `pubKey`) VALUES
(15, 'buyer', '-----BEGIN PRIVATE KEY-----\n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\np+THSc5odFuNkANMSrlfBfkee5jxzA==\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAxvLVg0max7gDYJmd4rVy\nUATWDVKaKwLiuKk2R+fRZlOvziqAhieAc31MogU60qjIG5S3HOSJwtWEROPGTYbn\ndzjch+ZNWK8I2D1+i4qibmR7j+OgrPjSL4RRXVMECFhg+/ohckGBXlWmmsXg0s1a\n1QtIWF5gfFyEWEDtXU3SdcoXQ8EaHBihnJZhpFuabTahgZw5vdyLlp48bsOTShjY\nxvTAR1dszqR6fLMSoCMJ+vauGPdRtUyH3ZG0oJVWku3j9P+r1+MA5/ZhHtDdT0CL\nm2o91a4ngwP621oIQ7kI3zSodM4lhMLAM7f4qAGXgkVPVS7HLjMW7BxPA7yY2HKP\n6QvRh6b0x2yxiiJGVpscRdP5K3Erb2+YPXN/ixlFumernKvoi0B0ZYKN+VYYJYKJ\nyDNhDhgTQKVlXPXTwbJXU4AJzQAmBKvQ0aErsm8GHqg5YFrk2QNyHmqECrsH0crM\nF9UDFbGRmWc1a0zvNNGtYl4xXGVNl4lOQDF0VZpdaNKuQ0qlK1laEvyDTFW7uNSk\nS0Ve87ry3ksD8ekV6RfNl2FkHlY8aQkCQf75VtvRqu3t4Op9KzBa7ZOd8KgeAgiS\n17YWwGn3NsIOSnG9Bc6ix6sPNfxDOFnL/elGVCRFNLPW5G31Wrm5jl1rJz8xwHtb\nNM9P6a7pI4lfOW1gSjXVVzcCAwEAAQ==\n-----END PUBLIC KEY-----\n'),
(16, 'merchant', '-----BEGIN PRIVATE KEY-----\n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\n7ujqMovOoJhHh5kL7mkOQxJ+fRfpRLDE\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA7NzFn0maBySmL3lsoNNt\nzvK66fDW3dsPtK8YO2qyHxz9O2DvTDgMFAJqv8Y2ETfozsjRmLUPTeVKbhl7PPe2\npg+BYC169IeYyajT4Qw1XoSNtLvranUiGu7gDXoKDD2KcgYOzOF8Tamx35/MFejE\nlufquK/2eMmvb0t4ys0rvHT8ukJvESd7WREYVLFtbVoZcWrPFYb7Yh4A8SeCxgyW\nYMD1PRLjVVUUrzaOJ3sRRok9oYwWfkL+2T+8xsMllC0q8xAIgkd/nu7Ato61YSFO\nyf9YCQH/zVC/ZA5z3lIgYVxCXt9haJhFcSCqI6c0HWcMTpmM8sgSfY4PVqpUxPyw\nJVxv3iLtoReHnf0V106jG249Wd1BULchVQJPsEXGpDs94Jr7dTvd5jEqb661Ueff\ntbHb0E8Tbl6qcreubuIpAD7EdRCwwKxp5p6t76Q3zfB87FugfeZepnfx8QC2vALX\na2tADtvlFtXu9vJ8SZxqr/2AVVIKqv/mrLmeXQE1PI3Y9kJXO8DTsSnTiHXJzqPf\nLqs6K4NaSVrrK+eqoDekMzcXfzL4j+B3q27A92R/BS0YLZAqzOhJLDCxWKq81po9\n4rWeCMBJzupFV9U8e+f1k94CA15G8hihU2jl7qKlgWtYgcuI8t10GjVkE3CYNRkM\nF52UvWIMPt6BBQDt+yQMLc0CAwEAAQ==\n-----END PUBLIC KEY-----\n'),
(17, 'acquirer', '-----BEGIN PRIVATE KEY-----\n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\nxLdu2xOVEHu+L+0+CNz1wu550e8lrA==\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAx4xN4iq1vCqn+dQ2FqkT\nOzx/3goloOdQXd+I/Vl39Bn/KDxvHNvPvkoTw1QWQSJKhQZTScKEwDzZrPebXQWS\nWr95PSnsX1KY2fN3HitPrDwrMPoCu6BXltvWzuCNyX9pKNPEcc4IMwf97RnDHpln\n+N0NUn0oYPSLaMWbbEUzrlXR7TfXNu1Rn7dByTIOQ/qXvN0BxpxZPj/4u2Bb8GLI\n+Qq2Lz/LyQvVX4NznU5a+MJ0TExXIWoJY+AH1CQLc3xqVI8ElWPz76NautLJ0vhp\nzggrwsBLUI76W5j5zMVGyuR4MZpM6rU8inl4c0236Gm039XZItFOd3h+q4EEf3IH\nhIWUvbRa/m8tP9Ok1eao0rzricuUSPbz689IF+lwHbPIxSc6m9hW6jFmjokQDar9\nr8OTfk5ZD6Cxgxo0rJTnMPhNqRoXDkTaISAEtOjTjWfa30iW1Axla2n3TFhAV5xq\n6B2uTdAjhQ49qb4trCyOkIHmJkXc1iHLNyuNnnatQ2FviNYNyPdXzjqlvDoaVBdF\nHA6Z4fRj6SYjhPNCblau9I+8bdvDo9PmiO3FvKgVDDB12xvBh9gCRs3gUzsGFyfG\nzl+1CGRh7mMqzSvZgHROkPC241n7kQ1TzB4qRTwaoSVn408oIt1qXhhGdeMVISlZ\nv4cZQafahGeN1QhCekVuRoUCAwEAAQ==\n-----END PUBLIC KEY-----\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
