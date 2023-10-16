-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 16, 2023 at 05:04 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rating`, `thumbnail`) VALUES
(1, 'iPhone 9', 'An apple mobile which is nothing like apple', 549, 5, 'https://i.dummyjson.com/data/products/1/thumbnail.jpg'),
(2, 'iPhone X', 'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...', 899, 4, 'https://i.dummyjson.com/data/products/2/thumbnail.jpg'),
(3, 'OPPOF19', 'OPPO F19 is officially announced on April 2021.', 280, 4, 'https://i.dummyjson.com/data/products/4/thumbnail.jpg'),
(4, 'Huawei P30', 'Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.', 499, 4, 'https://i.dummyjson.com/data/products/5/thumbnail.jpg'),
(5, 'MacBook Pro', 'MacBook Pro 2021 with mini-LED display may launch between September, November', 1749, 5, 'https://i.dummyjson.com/data/products/6/thumbnail.png'),
(6, 'Samsung Galaxy Book', 'Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched', 1499, 4, 'https://i.dummyjson.com/data/products/7/thumbnail.jpg'),
(7, 'Microsoft Surface Laptop 4', 'Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.', 1499, 4, 'https://i.dummyjson.com/data/products/8/thumbnail.jpg'),
(8, 'Infinix INBOOK', 'Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty', 1099, 5, 'https://i.dummyjson.com/data/products/9/thumbnail.jpg'),
(9, 'HP Pavilion 15-DK1056WM', 'HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10', 1099, 4, 'https://i.dummyjson.com/data/products/10/thumbnail.jpeg'),
(10, 'perfume Oil', 'Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil', 13, 4, 'https://i.dummyjson.com/data/products/11/thumbnail.jpg'),
(11, 'Brown Perfume', 'Royal_Mirage Sport Brown Perfume for Men & Women - 120ml', 40, 4, 'https://i.dummyjson.com/data/products/12/thumbnail.jpg'),
(12, 'Fog Scent Xpressio Perfume', 'Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men', 13, 5, 'https://i.dummyjson.com/data/products/13/thumbnail.webp'),
(13, 'Non-Alcoholic Concentrated Perfume Oil', 'Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil', 120, 4, 'https://i.dummyjson.com/data/products/14/thumbnail.jpg'),
(14, 'Eau De Perfume Spray', 'Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality', 30, 5, 'https://i.dummyjson.com/data/products/15/thumbnail.jpg'),
(15, 'Tree Oil 30ml', 'Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,', 12, 5, 'https://i.dummyjson.com/data/products/17/thumbnail.jpg'),
(16, 'Oil Free Moisturizer 100ml', 'Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.', 40, 5, 'https://i.dummyjson.com/data/products/18/thumbnail.jpg'),
(17, 'Skin Beauty Serum.', 'Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m', 46, 4, 'https://i.dummyjson.com/data/products/19/thumbnail.jpg'),
(18, '- Daal Masoor 500 grams', 'Fine quality Branded Product Keep in a cool and dry place', 20, 4, 'https://i.dummyjson.com/data/products/21/thumbnail.png'),
(19, 'Elbow Macaroni - 400 gm', 'Product details of Bake Parlor Big Elbow Macaroni - 400 gm', 14, 5, 'https://i.dummyjson.com/data/products/22/thumbnail.jpg'),
(20, 'Orange Essence Food Flavou', 'Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item', 14, 5, 'https://i.dummyjson.com/data/products/23/thumbnail.jpg'),
(21, 'cereals muesli fruit nuts', 'original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji', 46, 5, 'https://i.dummyjson.com/data/products/24/thumbnail.jpg'),
(22, 'Gulab Powder 50 Gram', 'Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds', 70, 5, 'https://i.dummyjson.com/data/products/25/thumbnail.jpg'),
(23, 'Plant Hanger For Home', 'Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf', 41, 4, 'https://i.dummyjson.com/data/products/26/thumbnail.jpg'),
(25, 'Flying Wooden Bird', 'Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm', 51, 4, 'https://i.dummyjson.com/data/products/27/thumbnail.webp'),
(26, '3D Embellishment Art Lamp', '3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)', 20, 5, 'https://i.dummyjson.com/data/products/28/thumbnail.jpg'),
(27, 'Handcraft Chinese style', 'Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate', 60, 4, 'https://i.dummyjson.com/data/products/29/thumbnail.webp'),
(28, 'Key Holder', 'Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality', 30, 5, 'https://i.dummyjson.com/data/products/30/thumbnail.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(66, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$1erZWHqjdBJFyl.4ef7aCubt6efG4Dz9ohODuC7hRmRBtZCBuxyca'),
(67, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$t2cH0dIe6h83RsCPxeVHKuTjGf4a6.q.uW7BVbaUwgzgFYpeASODq'),
(68, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$fS6Zj.iO1PlR2yhUomvFKOMd0CXRMZ0ptjsE4Bo9g3WrfASHDYfOG'),
(69, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$TJiVRL4/L3/Ny9Ac0ZfTEOX4iPZxNDKy1b5wqkKzcTiFNnobdWCl2'),
(70, NULL, NULL, '$2y$10$R4WLtNWnb0uY9xf.DunyIufOxYhhcU1EoNHnmTYh1K0Gbx/b1yXVK'),
(71, NULL, NULL, '$2y$10$44yT3kYN43SLZNQLIx1.AO.ivjOmfKqf1/8LxR4qkRi8SCCHx.Puy'),
(72, NULL, NULL, '$2y$10$l7v4RvKdsECUs7g3DVUJoOyDtWaLYjKLkZMEthmlOkQRtv0lii59m'),
(73, NULL, NULL, '$2y$10$xdJCxhUk2RhxoqfSGSxNkuktzvl83CtUHv24ZMMXVBGsoo.FBjBjm'),
(74, NULL, NULL, '$2y$10$b6I.NblDotUt1ImCJGswoe4aSh3U5XaVaoHKIjTM/aWXPPWkhgmny'),
(75, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$beZvwmEl9zEvocgYnpq48.cAzg4xoKlZ7IkrfHctqLNBSFke3F1FG'),
(76, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$HoaEsDKkCUJIgVBECB4TCe3kVMJo.Ey8UgE15AO5pKgZvc02oCGau'),
(77, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$0dNUwoe0vMOt.d7sQ6thzuVUE5LHVbRklTLTYvhO3mkZhZ03qvt4y'),
(78, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$68DckWyfJVqSDjHlS18OqOirIY4lBqVZdXmRjr/5G71EbZpheZTPm'),
(79, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$V6mtjlsY0xZZlTJ835eVDObuB/mF0DEuxXc8oBiqkQPqPghJPYjWC'),
(80, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$ZWee9wXxQaZM6SdarMRRmepRD1YAFNEUD3NfKb8h6xeENPtWs0Dme'),
(81, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$i9tOZvBaRkZzt6ehTbU/BeNasivlHGSgpcMcX1JG5xr8GBBDzuGAG'),
(82, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$Z4ujh0c.aCDnJURjPfvTFOVEeKrC04eUFf3flNqav7r0pEJPzVDqW'),
(83, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$VFJfZq/FJwsiVuh9VLKUFeSCNg5Cy4fpkirKSQu5uZMJZrE4LdC5m'),
(84, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$yjzOIYb9X07lTHp6gl7jfOOAAayoly6AUpxYF/7hchJlO69eDZ2ZO'),
(85, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$7CkE5bRFNLJHLnGQozI1XOWW7wJXZkMLI77bLUm/Y9RAXqAk6dqx6'),
(86, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$AOqlgxZBw2ac6eb4QVV9LudFzixunsAWJkGqJIim9axHf6kNTnUl2'),
(87, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$1knX7NkdPHLcchJCqSrzv.B8KioOUgs5pBSfWp8/BY7byV3LE9cg.'),
(88, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$EVg0iRQxAZ2gO7bd60mIPuXT0AN.fGMiZPv7OuHsME.gzUBl6fbo.'),
(89, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$A3uithUuaZv3V9Eee7AQ0.di7Kw1puoHqm59SwtNzs1HtrHxVAA4C'),
(90, 'AndreK', 'danteshadar26@gmail.com', '$2y$10$8WBHoqIp2ttHKyFkuCWBqO.JqEnPZA12bGp82/z/cM6Ie2WaGES..'),
(91, NULL, NULL, '$2y$10$2WbAo5Ng3ZLKPugvNerEdONHGvNRBfUprSVUdVH4sbBPf0UBKlFwq'),
(92, NULL, NULL, '$2y$10$aHzrFNG9SKv6H7wc0TKIq.5YU0udziNtwheZMbtYg7hWxj9nrJzmO'),
(93, NULL, NULL, '$2y$10$KH0zOz4lCUuCdHsg5Cqs0.vJ8KOIdVLEBBZRY6bPtZYhzz14caKn2'),
(94, NULL, NULL, '$2y$10$nQG2wMf4muJ.fXGZFhvVsObtQBs/NeekFO6kvnvwMSu7iG4MkgfuW'),
(95, NULL, NULL, '$2y$10$aH8WF3K1aym2JF4QGMf.eO9WrhzpgjCdrcSYx3WEiyoO.dX0LCYJ2'),
(96, NULL, NULL, '$2y$10$Lcg4ZljiHHInZK0yglIj5uPHlzehlVlnlZpOYo4W4.SkUToZbGLPe'),
(97, NULL, NULL, '$2y$10$GKCtGwGrGqvjDwNKrqdfFOAGDcNiB4PLBtTOXxiWizT.81NAIWZ1C'),
(98, NULL, NULL, '$2y$10$A05HtaPHn1e0pFYg0Z/45e1T5esJS3uCgcJQwj3/u3tLLVsTIGPCi'),
(99, NULL, NULL, '$2y$10$MaS8FWTzQ9a.2mlNGUrRJ.W9Cb/ML/tFDzAAOlFKVJhbIFG8nJDJe'),
(100, NULL, NULL, '$2y$10$.I2CdWBL2ue70CGsbws.LeKX3vm087UwwFemS3RBfto1j/W6hZOAq'),
(101, NULL, NULL, '$2y$10$RATJVQKkcnr/8zrfhJI3zumdfCYFaf8tcYflMOWOrqH/B4szqRFae'),
(102, NULL, NULL, '$2y$10$z4hJ8ZnP28dCgGQqB5FHEOFqb.sQvYVtK5SicsPNGJ7KP71OxS07W'),
(103, NULL, NULL, '$2y$10$oT3pQzBEKq8H/vwqtMVDY.15A/IYEtEINNUnb4MZQuhPoi/n3LvOO'),
(104, NULL, NULL, '$2y$10$e0ej6cB0xi3Sm5G3kSw9neuDpPJ3I55ohGU/8NbZnceZkf/yZza/q'),
(105, NULL, NULL, '$2y$10$N9d/FxuQsowhz2Uuuxa0kOO2FeYI4Nxf9WmlCY3CG0McuqZkfiI5W'),
(106, NULL, NULL, '$2y$10$80InmnW9S.f/V01oriTWbOSaahHqR8TcApl0Ug6MM/rEMeXA2SYRK'),
(107, NULL, NULL, '$2y$10$aLcNfOEWNlcPmAi70Tan0.Rr.z4OtJjlxuYhyeNxEl8P.fr2QL246'),
(108, NULL, NULL, '$2y$10$zxZjdetC2b/YzDXcYh8T9eCDgRJbOVC7TkuMzzCQ8FiZVzGKewv8q'),
(109, 'ssss', 'danteshadar26@gmail.com', '$2y$10$rMq7ORgzfCs.vnwMKIxXXuPufsknd6ACznBTwffIN9dCWh.EXhFEK'),
(110, NULL, NULL, '$2y$10$Lp34BiVQV9YFulCOBPosRujgH/tIn6NQyk1b2eYdWqJJVirZiwKY6'),
(111, NULL, NULL, '$2y$10$LocFfNbYWAXSCC8q5bTuf.9Qoa9pEw23qtfp.b3KjkfJjtrNLMQ/q'),
(112, NULL, NULL, '$2y$10$DasnGXqdp2uExxlAXmFfmuLkKS1A7eU6IHflB77YGfRZcNMLLgKny'),
(113, NULL, NULL, '$2y$10$EiVOLLQOGNgVjOsp5Dfhce3jZnX7aQcuKQ3kgfgusbXAVyiFhu1MG'),
(114, NULL, NULL, '$2y$10$RZ/7x39zHIHkGvrEXzx3j.HcQF1GTwHLQB96pCSA9dR6369mxnlfq'),
(115, NULL, NULL, '$2y$10$jHO5xQMz9EDfyjzm7V7BP.y/TqJhcLh7pS4WDkw2Aoo09KsSmeHKy'),
(116, NULL, NULL, '$2y$10$5k2u/SfvdJJ550fkwwMTh.nqQNb/xf6vrPLStxxK/wSBocoUTe4tq'),
(117, NULL, NULL, '$2y$10$KKt6WV10HiscWI9fC96kZOVnpmW0QUXWMrMjOzya5yWsBJPUwZ0/K'),
(118, NULL, NULL, '$2y$10$mMY5dIdRJw3nditlg11J1e1RWUvk.oUF/Z4YUjX.v1MZO7Z0s7avS'),
(119, NULL, NULL, '$2y$10$wHtH5RyrELRNPhBsb68REOBfMbXgr1Rbm5pG6yohhtZvkimN8zg6.'),
(120, NULL, NULL, '$2y$10$loKQEUlwKNNApA.i/NkjgOR56YGwVNij99AOHqVlibaRWklUXWX5m'),
(121, NULL, NULL, '$2y$10$HE.dG9UYTC7gO5ffYMrjJe9lq1AeLKN8vIeBPrUuHJY3/xhcesiTO'),
(122, 'AndreK', 'aa@aa', '$2y$10$TarP3cK5tq.p8smW2eXx7.rpMyuM5wcX9apB86Xwyp2iTF0lKzjeK'),
(123, NULL, NULL, '$2y$10$VQZ3AiZqBFZPfuVRPd.4kevpjRMVptGMeW6uwVU99/1kjG9Em6N7G'),
(124, NULL, NULL, '$2y$10$ecGe9CUh2YpOgapZ/puBCuPaSStq6XlkhvaCGdGfdEb6aa3GWGQnq'),
(125, NULL, NULL, '$2y$10$f.aH8v5J4MwDeW8iMoUPfOcheK1vNhPSNkJmoxKjxs1DcCMzP9VsC'),
(126, NULL, NULL, '$2y$10$8PqoeeaV6FhaHpQ9DQJtmOaumEbF/RZJBnJCeDpmmWGcw65yJjl76'),
(127, NULL, NULL, '$2y$10$gMM411Mx6tKj7JgbuDyRaOuNir9XriHm2RIJ8bCkFCVFBps6OgQvW'),
(128, NULL, NULL, '$2y$10$4ovFbfpmc9RmkJQ8VC8LYudubcZFjIbkU5Ww6ogM0x101E.I8Z09a'),
(129, NULL, NULL, '$2y$10$U4P/LH8eLsyF.lxJNttyU.xS5v6LCJ4mLxyYutPc7.9Rc.dhKFzWC'),
(130, NULL, NULL, '$2y$10$ROWC/Y1lOlR067X/.wBoAeqBqye2VXu7XF98./3RtDTTtS9uEL9zq'),
(131, NULL, NULL, '$2y$10$MdXN5PQpdFuS1c.3w3fwhuUxBxfklFibASRqNGGj4OtVgsvMCPxU6'),
(132, NULL, NULL, '$2y$10$YdUU0Yh47MfsGb.w3i.7oudKq1qH3FTBcpCKmn27MzHZfQTns5tD.'),
(133, NULL, NULL, '$2y$10$JtYkbUBZepHzS3fTWH3Wze3ypCT8ccSUmI1T9CqnJs/F.JK9OdTC.'),
(134, NULL, NULL, '$2y$10$bOUiJVafpMkWiHjvild2n.TLZ609hDK12Z6.mwJeDPtP47YQFTHWO'),
(135, NULL, NULL, '$2y$10$jd98ixbmKWZJRThVWUSPS.hr5dWD8y02dEmNbotEvsE3MiY1IGp4y'),
(136, NULL, NULL, '$2y$10$.iUZsa3zpqlEdNZQ/0jmwOsnKM7jJqiVxAv4VuX2VKZMtF7j9LAE2'),
(137, NULL, NULL, '$2y$10$OU4jpFhIK1rEFzmDEw25TODf6mJGfSMQl/5ck8ITrHDzfnCOKQAGS'),
(138, NULL, NULL, '$2y$10$505fSWzoBYweuvseL5TnWeRf7qiE/RHpmjoe33ewBGGumt30OLuXm'),
(139, NULL, NULL, '$2y$10$3ap4nrp1x3l9i73lTlys/.8EiHGj7syf8yQuE4V9rfgjQ0xcwMNM.'),
(140, NULL, NULL, '$2y$10$ULJbUx1/FCA9eXwyor72S.ToSzpPZbX9TGpg/POqAU.3cI9rmy5Bi'),
(141, NULL, NULL, '$2y$10$BuuTom5WsNKh6ssjUjfeRuY/06gCSO4WEuHvxdvSkyOgjUmofuw06'),
(142, NULL, NULL, '$2y$10$3J.Iclv2jphGWj7vj5/UE.WC4YnFFCQ2DqSWtUQ9rSqZvAvHPNP3C'),
(143, NULL, NULL, '$2y$10$bSNQLoEJI1VPZRrnBd0odugnwS6eqrbod0g/4Hv0N5UcBvXor/wyC'),
(144, NULL, NULL, '$2y$10$Tn4ROEhvUQbtAiVXki8m/ef9I13Au5TW4.KTVVEWo23UvDM4LyOnK'),
(145, NULL, NULL, '$2y$10$FJpFbsgGlKFgB1AkfifBbu49sFJ1hp/JW0t6xzCRC7PvZIbXAR0AS'),
(146, NULL, NULL, '$2y$10$VmCiXHRJlhVJr2RseHCEVuP/R.obAv8VXXY8cB5/JdC6Xkju/gSw6'),
(147, NULL, NULL, '$2y$10$ShaVHDG8ydTrQHRh3aHWiu02.pMjpZKwvZgZb1nG/khD7luJRJLCi'),
(148, NULL, NULL, '$2y$10$mqlGgWP5lU0cLscy8s74EetMW9pEqL1ps75KPX.9wbfGSjUR3M3Ta'),
(149, NULL, NULL, '$2y$10$AfMw1hQLgYVkiUj2qjCLBuNTY0u4jl7sSiSyFNj0xHSJ.dvcRi.Pi'),
(150, NULL, NULL, '$2y$10$ZIRgSZAWnibxN6kOsXQ/7O.xNdh1MLwYgxo7YhlL7J8Lv.t.G8BbW'),
(151, NULL, NULL, '$2y$10$vIUsyaWxnpIsr/jV7ryCUeD/DAeOSJVDM9cjWBox28e8UiCwA4zfW'),
(152, NULL, NULL, '$2y$10$jAWtcBHW9nbu391S21heWeUe.0WUZ265sYuN5gT0plxDXd0pM/i86'),
(153, NULL, NULL, '$2y$10$5TLcmuRfm2q8038/AmgPreBmYQXt4El9V3Q6/xdAxyX95SUN76wmG'),
(154, NULL, NULL, '$2y$10$Z/6yxTKoMEylwZSvIT/vuOMK.Kl2us7zjll8CufcKkpkl/Dy9dLhu'),
(155, NULL, NULL, '$2y$10$i1ZrvR9BQLJww3Ln/sawsOtwqzVCTQ1Z8FWw0Wy0RkcAgIL01cs5K'),
(156, NULL, NULL, '$2y$10$cc8eqFqotipNgkDuOrOcOOc6z7ETYLXyPVO.ibLSATZdvPwx4uK8C'),
(157, NULL, NULL, '$2y$10$EwHvhCFXGQdY2gjniZMwn.Lg1pYUNIaAOsFOJM2ngJMhgqa9WfD2i'),
(158, NULL, NULL, '$2y$10$LUaok4AzeZnx7nw3r7HkseOo6PwB2IZX4Z1V887iXkfWrr2ps8OGu'),
(159, NULL, NULL, '$2y$10$swW7zV2T7A.EU1dhzBMg7eq72lFFY17JEMQdsa6vRqkxaSjweaw0G'),
(160, NULL, NULL, '$2y$10$83MCo8XP34ackzNo0iTDj.6YydRmZPNRgp89G2oHshzXnAF/esaI2'),
(161, NULL, NULL, '$2y$10$b9dQ74/G9ptSCAjhbyNbke3ttw7xkULpbTxrVrx1JmsP3ZGZrWqm.'),
(162, NULL, NULL, '$2y$10$GtRj3l8b7FuSFmt7yKf3teaUwERS7IE6n4VFz0Vr/yRJeDtYlriP6'),
(163, NULL, NULL, '$2y$10$bCZdrjoHFcje4uTp0icr0OFizxUWMpd/w4G7tC03Mx1Ezwyjz4cfS'),
(164, NULL, NULL, '$2y$10$ujKF2OzBzUi.B5yYytzlruSHtbjkZnDTW9MKlgajlNbgARwVbzVO.'),
(165, NULL, NULL, '$2y$10$5n5PcuAsXmMtBPsLIImBdOuL2PlDDUjijtJURDdrP1eJ16hHgBR5C'),
(166, NULL, NULL, '$2y$10$KGs2Ls6QUTcD6.Mg0e4BC.aQdfNvMLEeitCWB/r5g3H.duRCq8m52'),
(167, NULL, NULL, '$2y$10$UhMHFn/oRBDqJFZxxK884.VqUpMqxPPor2Z.v.lvNbEYghWvwOXc2'),
(168, NULL, NULL, '$2y$10$S8EEwQgEhheeUfFJzgHFFe/MHc4N7Z4b9CSjoyOIZ9z6rGj0xTOjO'),
(169, NULL, NULL, '$2y$10$R0O1rKBKZ24EWAWeDXqDNe3z5NoT1QOsGxmAqhMDMi.mkDyJz9cDe'),
(170, NULL, NULL, '$2y$10$HeI8DCBER8qLRndEVmQMfuRhYJD/n4SDNBPeQI0mws9Z/xz7ZC7eq'),
(171, NULL, NULL, '$2y$10$4fzZhQhfQFGScYHehXgCUe2bbdLPCBR7EeNQAY9Br4WGgWcL2wEcW'),
(172, NULL, NULL, '$2y$10$OL2/biqYtfmYu25LPVMpgO2bekoJH3faC/Hbh8NERD.M0Moq75iZC'),
(173, NULL, NULL, '$2y$10$IgUuOYIGZ.53MWjrEOEtLe5FENS67P8LDE7dat2ujNSBfbfUlJNHO'),
(174, NULL, NULL, '$2y$10$lg7fUbNrSt5A12cxzwKi1.SfuL8V.5kTHHoyhyV.7CVLu6LJ.8yeG'),
(175, NULL, NULL, '$2y$10$ALnP0W4aVoMPr8.R2z/zguZljaB6isbEincNWe65mjh0kOTtsOtMC'),
(176, NULL, NULL, '$2y$10$tFKwXmdvWWOSzo2tkRMQUu1o1Q8LYb.m3FB.1Rfz4uBgLD96K9gom'),
(177, NULL, NULL, '$2y$10$xwam6u9kGXBAFAFFfUfHouq0y0/EvAKRgFA7JIhDWK0Q42ZphcSAi'),
(178, NULL, NULL, '$2y$10$EgnqeK8C0ysvT0YBiZjlWO/VnGy5ORkNK/AOL4gphCmdD4uyrOVMa'),
(179, NULL, NULL, '$2y$10$DcQLs4ZyelQ9CE9aEtAlP.bq37m0YNXW0hh65iDcS3VsZr0lEQ8Ne'),
(180, NULL, NULL, '$2y$10$TWNOGsWlUM96FSOvZhROJOu1ekxVxG8CgUyAJU2b3BDk2pYKmJtV.'),
(181, NULL, NULL, '$2y$10$uw5mvhEvhvMg7VGX7Q4tg.eUY4XcBMLEUoMYRFMgaf3xZ6DGfXYjW'),
(182, NULL, NULL, '$2y$10$1BsHvQyZI/CcuDvsAg2W4.IsrBofWsZmv3XSA9.dwLhNL4mS3E05K'),
(183, NULL, NULL, '$2y$10$ljcN.x.fLd4TT0ECT8AxF.5x5e0sByj2em5Rwcrs1.rTsMHVuPnmK'),
(184, NULL, NULL, '$2y$10$KSjghzojdOg6c8NJ6EcmKucBCGs79m1yCR.tQtSCmN2u6Ry8P8qj2'),
(185, NULL, NULL, '$2y$10$bZWbcNiCoDiSn2zJIp/couionnY88PVA2DEL.4DO9rwOSpjElJBsy'),
(186, NULL, NULL, '$2y$10$ZZaBrb0osd16GDmGwWVKk..Szw0UNrojlJl0n4IyU8BuaOTHzlCQW'),
(187, NULL, NULL, '$2y$10$3E02rwNx7VQ0oAh4wEOnke5qoQs9OaxL6QmeTdxKgruUUid6rEkna'),
(188, NULL, NULL, '$2y$10$usue6R4kFYGQM5JjY.sTmO/p51YECWHVke5gwidO3rT6CoDx1VYTC'),
(189, NULL, NULL, '$2y$10$9T3GbvofGx97e5P1kLA3Qe2wxblCQ6KH6GgGtQjjSItE1Athgu/li'),
(190, NULL, NULL, '$2y$10$p7Qb74jvArlJ9E/i0GraXOTIJBmkXEHT.DabGq0eoer/VpSslDXBq'),
(191, NULL, NULL, '$2y$10$Gyqs4XqjJwtXEpmTElofo.IV.y58miIh.Lr8RKNViPMoJ3X6/HZyO'),
(192, NULL, NULL, '$2y$10$1JeeZFKG2nzK/RxWwGQcpe0WnpsosYFE1ZX5ueMffjgGnNOuSN6sC'),
(193, NULL, NULL, '$2y$10$284QLL05IjQHm.pnknBb/.g4OmaUxWN9KePnxPHAt4ipWaNOeEUKW'),
(194, NULL, NULL, '$2y$10$8HKvZaH5h.FK.om4Jg7pdecOoOxd1brfRFoOyaUEEew.7szc2jhuS'),
(195, NULL, NULL, '$2y$10$nnEiIQ020/ZX66rQnqD.OObEFxBYy1F7oQHvlCPW3tmZgZG2jPmm6'),
(196, NULL, NULL, '$2y$10$m3GRtG7hmEN1yxQjAcODxeG2Jp.fnAijLr15HH5Ck3o2XDpk/7O3i'),
(197, NULL, NULL, '$2y$10$ns5PKC8cLfmPHIoSM6rL5uS2rkq4.5yn.YgxD12tInolNpI4Z7EcK'),
(198, NULL, NULL, '$2y$10$UMpem8WVTTGrarTGw6c2UO7z2.5fxgqBQHwcjQ9Yr3O4IOthV9GDG'),
(199, NULL, NULL, '$2y$10$SZHDxPEDIxcMQTFamVxlHurZIGwve0DUaWS3KaLxgcBmjwWJ1IyQK'),
(200, NULL, NULL, '$2y$10$yFIZaHIrkFuCzfAx/i9GjesT7pkg4sm2vfUwSfquhHphHS226BSl2'),
(201, NULL, NULL, '$2y$10$4s6IzPfdi1P0Df73RBgKjOa386QFKGzYSyfXqWv5Rjg3xxkY/z7O.'),
(202, NULL, NULL, '$2y$10$bzJHMjUGc0uT/0s3XHoqvu6hovp043fb7FIXKvmLoCIlaedqWcVoe'),
(203, NULL, NULL, '$2y$10$NVsqr1J3GLi/cfvk1kk5OeySrNRRSAU/jkEKDcpi0PN5VsKMEY3ie'),
(204, NULL, NULL, '$2y$10$lmXLHb.sbCZi1884ajC1JO54JpD0SkgB1a4wk5bdspcXiQzNy9fiW'),
(205, NULL, NULL, '$2y$10$oU/FLTGijlxlyuz4V00cAextShVoVfcbP1DYEv8Er1VJ0a.eeTele'),
(206, NULL, NULL, '$2y$10$nHsiEwb7g33XQXuve8c6q./rkxE4jcEulM2o4oQACVapPBvFQXXey'),
(207, NULL, NULL, '$2y$10$wQhPbIKSCk5Rn2CV5HgPcOD341X7VxBPGjixxf0TEapcJbRUm2bu.'),
(208, 'sdfsdf', 'sfsdfsd@sdf', '$2y$10$frAHydKP6098dbX.9GLwTepg6NRMBx5EG2IbWT/X8r5e09D8apa3W'),
(209, 'sdfsdf', 'sfsdfsd@sdf', '$2y$10$7VJIn72B4XDzpU7g1nF1FuJCsXMOMZJNl9t3VpbGAyTm9F6JqhmfC'),
(210, 'sdfsdf', 'sfsdfsd@sdf', '$2y$10$jQ51.hqX2hvJw6YKRwQLeu3NRXJbg8lxWGlgCaywkESSjz2To5VMS'),
(211, 'sdfsdf', 'sfsdfsd@sdf', '$2y$10$3NY6N6DoEhPOk4qx4xzBV.AAU2xjI3v4RIfvrgzmWHokLSu7H3S1O'),
(212, 'sdfsdf', 'sfsdfsd@sdf', '$2y$10$WUnGqpQDLyxv/hiyv.N4FupFUbpi6UDe2AwoWlws.gdJ6eBs4ogzC'),
(213, NULL, NULL, '$2y$10$Wi0xyvd7uscAAWO3JnmtgOtE8Bx4HfnnVhuD2PLXnI79Y5kIRs2Ci'),
(214, NULL, NULL, '$2y$10$YFbabfFadGxG5QRIIvhkouz49.ENJoWRiiA4rlp8QnAZylqybck1W'),
(215, NULL, NULL, '$2y$10$JWrTe4ZZZuvMGJwv6H.wHe/bBs7m1klAi4LE3HijzRAKR3cVZoklm'),
(216, NULL, NULL, '$2y$10$u5.DKbw5NCREURWRZt0nY.MB6ARyT3VqTkMtp9EhxyjEj0jRNzeJW'),
(217, NULL, NULL, '$2y$10$BrO0Fqamgi4D7EOTccWyoePArCnJ28XxzDOECUqaSa.07SnFVcHHW'),
(218, NULL, NULL, '$2y$10$YTzK/8uZIDpfGQNKJMdUDOxodgCSnTjgWZcAkp7JxnVATTRGU1Vbm'),
(219, NULL, NULL, '$2y$10$kODrEPlM1L19tT/JJ9EMw.5UaVL2kLTYf8zeOX06OVN23ZtRE4qKC'),
(220, NULL, NULL, '$2y$10$0xTKmnSte/6XvHcpHIJwpuezf/RkFBMdmnT8QJoa.RC/.bhp8cFYe'),
(221, NULL, NULL, '$2y$10$yVUmEW6CKHRYXvYhasLmVOEEMYeiRQ/3./h54PzSm4NzXMuJWYM8m'),
(222, NULL, NULL, '$2y$10$Gx615fehU1.1At6V0mP6Ju7syEPlS7ySu9zGVb9gREGYWrWoPiPmy'),
(223, NULL, NULL, '$2y$10$kSbksjlrdfkyXcJaQc2mZu.n.TfDCjDTY4p2LweCCAN9MoxOe9sce'),
(224, NULL, NULL, '$2y$10$XymXeH2r0dqUFOAcOpj0I.GsIGBCSSBuc4/lX1P5Htu.2AVTs6fPW'),
(225, NULL, NULL, '$2y$10$H7ZfXjZ5pQFrnXpDE4TySuXhqDHrPiOaCuWZfVjervj6p8tT2Ub0C'),
(226, NULL, NULL, '$2y$10$mfmWUPyAjjzMYw.rmKLyiOwHP.wmKEMuc.VDgkuW9QeaCHxeL9V/K'),
(227, NULL, NULL, '$2y$10$ZrM24Mg3JbMDV3ZgggJcpuR/uQLERUAkUDBhFHZkwQGRsy5Wpvn2C'),
(228, NULL, NULL, '$2y$10$DRUWemK.O4hn9nOKqVypfuXy1Stx5ZRK4TkZP0Z3gLpVWUwqK6nwW'),
(229, NULL, NULL, '$2y$10$oiqigozsqtsJ1kB2v.Tq/.UIybuSt.Lx5lhibqbFq0O3w8D/3CJ3y'),
(230, NULL, NULL, '$2y$10$Ndv1jzZAPJr3Yktl1U1Cy.SmuObR9NGDPPRSybGH1TH7L771eoEZK'),
(231, NULL, NULL, '$2y$10$/mMDuQMo5MJKZ5jBgMweluiZHi/LZfCZVxQduonp0hFdssxwyIWYO'),
(232, NULL, NULL, '$2y$10$kMCqGfMV6nzMcKjwsSYK/uDotFSwA9QmsQqk71oFwUIwuZu3B1JI.'),
(233, NULL, NULL, '$2y$10$eQuONXQQPgnbOZkfNeIQEeRuFqezfpCfGOPbUP3wuDNIeyaHJDD46'),
(234, NULL, NULL, '$2y$10$jDUHcm/YQR4Y6pjPaqyvmecQbRxlKFrTVJ6V2r/dHdMorrih6OhJi'),
(235, 'ssss', 'sdasd@ssss', '$2y$10$xTeV4d7uyK4swQhuPT7UNeIRgdRZWcGK3VZ5qq0gMHIXVDDDub4.6'),
(236, 'ssss', 'sdasd@ssss', '$2y$10$NLNG9kk5QRNpI4Keq1hXae.sw/6PfOMDBQeYiDd8LtHuOUIiZnOfC'),
(237, 'ssss', 'sdasd@ssss', '$2y$10$nEcUNfJXSxYN/UygW/brUOkCvx3W8KDz3ZOd.H/B5K0GtCPWJ5Gge'),
(238, NULL, NULL, '$2y$10$Drgb44ty6lwq4zhftbR97uZMu5RoP5O1sJC0IpsO5FlR70LgrJOye'),
(239, NULL, NULL, '$2y$10$FyVEjlxbztkjZSo5mbC5a.Q4ouNKtXrmZIzx4FKgH7hqsa6eXkYB6'),
(240, NULL, NULL, '$2y$10$LOUoCo/Pcf/s9Glba..IBOgdH6yBHQV6ZfKnjZI4zihYt6BG6eqb2'),
(241, NULL, NULL, '$2y$10$o2HeXAckJBB3DJoNqpc.8eFVMAyNvR3jy0pOpnGv3H9HQcnzP.pJK'),
(242, NULL, NULL, '$2y$10$n.71ds7VC.VR4oqw/Mgfze4uTPdnLEoezAgxR8E6xO8mzdDWKMaku'),
(243, NULL, NULL, '$2y$10$vLviP2XbumrW2vhElf6NoO3xUg1qVNIsY/.sLfVv9apiRh06rH1eu'),
(244, NULL, NULL, '$2y$10$QIm4wixuEjOnstkzQmE60.mqYxir8wCFf5yBvdQfcPhqjY8POp0vy'),
(245, NULL, NULL, '$2y$10$lM/ugkhUoOXQp0LWW/fOp.vvnRgTX.B.zZl3QykFkIWb246k3aM9i'),
(246, NULL, NULL, '$2y$10$HvgidEQ4obv.IF0WuV6F5.TMo.kAJ4SYeug4pEu6Xo9RjRiKCsXBC'),
(247, NULL, NULL, '$2y$10$qxStW.h9g7.m1POpIHiDXu5FXEt6B0knEVXc2zgbSq0ythd3Hbh.K'),
(248, NULL, NULL, '$2y$10$UHYeJ5jHUXVExxw9YBYRBOqOOzb6O/4ieFihwpMdC4eQCYxlcDvYC'),
(249, NULL, NULL, '$2y$10$hoV8ziE0IDheOa6oaOn28eljVn45jFNPBo8upYxf4n33uOAUOgWRm'),
(250, NULL, NULL, '$2y$10$uLoYkkLUsBgzp9Jdps2mweKYsa6VrixpD9av/tMV0vaWNmu7SZaiO'),
(251, NULL, NULL, '$2y$10$whdZLv8zqy9YtY7BQ3YaHuDDBsxjPEaWJsgJpWIhfZLmJ7X.6cqUm'),
(252, NULL, NULL, '$2y$10$2tNPkBg1VPHnLJrS.lHbI.ab0RZpYOpVkWM0v1tVr0VZCT8Pqv3/.'),
(253, NULL, NULL, '$2y$10$tZS5oLk.Guo0ag3ux8LFxOOSIvfgcOYND3TXM3RPDX9YsJ1B2uZ36'),
(254, NULL, NULL, '$2y$10$tFtqZLOwztfl7wIVlToGI.x.lwC9XySIuHrvqyMCp5FlRhnde/0z.'),
(255, NULL, NULL, '$2y$10$O1BRF7MWL4DEPSfkiojKSuuj0/ZNN4eAOCA91cebVaxMCYzWbTz4C'),
(256, NULL, NULL, '$2y$10$AZjUMYcRqkWoewlEH6/bF.ILi7JLgdCR4NZDxkz1NkJMaGMGzKLXC'),
(257, NULL, NULL, '$2y$10$CSLunXEOT9569daX1UJXSu.iV6KfHFoSp/.7Vgd2KEX8lPxPIOxWy'),
(258, 'asdasd', 'asdasds@asdasd', '$2y$10$ztS8HdJLUp57ypqfQW/VlOfk/IGey23FdjR5H48Hk7eAns3U4ZE0i'),
(259, 'asdasd', 'asdasds@asdasd', '$2y$10$BVO2FVqQN1gG4lu5Mk5g7.1mqZXitQu8EGKB5Gv49XqJ2NBQcuDqm'),
(260, 'asdasd', 'asdasds@asdasd', '$2y$10$UwX59MxL.J9PyGQf8Bu8c.H808vkHtaLoEZ8f.EmZquGeMrCYPgly'),
(261, 'asdasd', 'asdasds@asdasd', '$2y$10$f2UnG9AZwxyRgTZqjiuJkuFNJa4CAI22EcpOb/g7BIrmev8Fcf/.i'),
(262, 'asdasd', 'asdasds@asdasd', '$2y$10$vOv5kNJNQQFEiTcIXiKq/eqsRavaFICAXwkFtxlZYv2P1wAU3hvea'),
(263, 'asdasd', 'asdasds@asdasd', '$2y$10$WdRbqOtnU9dzzFT9L0hUC.8xy1PqD25LJqppr6IrDeJIvWXPAJbx2'),
(264, 'asdasd', 'asdasds@asdasd', '$2y$10$iU9nxutlsXlb.MP7ithbNuiXIcd7aiV9EojIoZUSA1bluPk9MNUY.'),
(265, 'asdasd', 'asdasds@asdasd', '$2y$10$5BYcHwgv5HXvGV.KoDx4PuCSt3acqv.5dkB1yaQb7I4EbXcQ6NN3C'),
(266, 'asdasd', 'asdasds@asdasd', '$2y$10$q7pnHT1X9hJKG88X457gRON7IuMZ/mMZrsIIccp4MH89a4qORez0y'),
(267, 'asdasd', 'asdasds@asdasd', '$2y$10$3zotwrpQKS2gBAL39RRnP.3fVkybdZXMDh2E8RVFURNXcfHVfn15S'),
(268, 'asdasd', 'asdasds@asdasd', '$2y$10$fhjLe7EuhrcJw.PEq3QSn.len7DwaAIwKl8U6bI/wf02qEBovpP0q'),
(269, 'asdasd', 'asdasds@asdasd', '$2y$10$fuBjboRMRinBqmDxeFz7FOsdxARC1bMT7hJKt90HVuFgtrZ7gFtB6'),
(270, 'asdasd', 'asdasds@asdasd', '$2y$10$VB1n0wr9tSILz.wkY4aK0.oEy2gtykCdvPCEtn/haWJ5s15/s4AKW'),
(271, 'asdasd', 'asdasds@asdasd', '$2y$10$2L6QWg9FhqWZQ6enqBMOT.cCQfRg/YoxMTnfEcicpjMkF2BIVuGHq'),
(272, 'asdasd', 'asdasds@asdasd', '$2y$10$QIl/0fN/3mAi6mMG9ylLIeBxRVWM1MvzUc69WP7ccWmaRTP7zfIhu'),
(273, 'asdasd', 'asdasds@asdasd', '$2y$10$sBV0GQvhcV/OwnNnOWODPeNhhO7RkRdzgXps7uJVsHfbIvjDjpKqC'),
(274, 'asdasd', 'asdasds@asdasd', '$2y$10$jqGssgpXtj6XBU1sSdlo/e0/85Q3SqvTCH4dUEp9kmT47kZ4crf7m'),
(275, 'asdasd', 'asdasds@asdasd', '$2y$10$XsGE6rnBr8TvbuzcG0Upp.VitZqBMKiIEf.kZHwYyv5YiHM308H5q'),
(276, 'asdasd', 'asdasds@asdasd', '$2y$10$KmHQKiymbUUrEDHClT5DguyuNjq6rH20lthFgjx0vZ/kBKt7aAr7a'),
(277, 'asdasd', 'asdasds@asdasd', '$2y$10$X/UPYX43FzMOvD2oLtYdsOPVPe2hCN7oj7MY7tzal6hMFxy9l2ee6'),
(278, 'asdasd', 'asdasds@asdasd', '$2y$10$daJmgpT46b3jN7QC./JyxufzbI8UB32SM5vfnUdKkZMb/zI5sVOZ2'),
(279, 'asdasd', 'asdasds@asdasd', '$2y$10$AMwHt9uZmNjU2bcO0SMft.poZGclY24vqjt7jcuvKB5YhEg5oEZS.'),
(280, 'asdasd', 'asdasds@asdasd', '$2y$10$4.uPya0WfvGUAlvtTlv18.tDiXQIjz8TPI.I.f5NhvrnqQHKTGwpS'),
(281, 'asdasd', 'asdasds@asdasd', '$2y$10$8dzdb1zS68UUrRYknNiXeu7lhBLf5EnY0sZaxchZE9KL/zJZX.gUW'),
(282, NULL, NULL, '$2y$10$Lr0ekoFn9nKPz1PZfuLZJ.aRHwuw.yCxcaRsa61TP/g58XyA.Mco2'),
(283, NULL, NULL, '$2y$10$qHk0DSifAw5r1LzbYN7LAeKbEWVjypfsPCrEiLdE1/BVBVGStDfia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
