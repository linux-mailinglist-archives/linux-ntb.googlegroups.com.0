Return-Path: <linux-ntb+bncBCW7ZP6MSEMRBQVN4PWAKGQEIPGLXLI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C248CCBC1
	for <lists+linux-ntb@lfdr.de>; Sat,  5 Oct 2019 19:45:38 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id l9sf6190980edi.8
        for <lists+linux-ntb@lfdr.de>; Sat, 05 Oct 2019 10:45:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570297538; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vet2zxQEaj9Z9WDWsMtFgsfowxlBSAcR4nhCh3MH77P0odPnPb2hIN8bRvWyJtmVcn
         Zkuwe/SnN1cyc2mD7SGy9hnmz5N/5QSa5lvyL93WRpGq4KWZTYGTnSHbOxgOeXM/pCrP
         u2jAjAPUNJzt5S0u8uZQOkZQx6tt3fJ7s2BdO948pQQfon/7p1i3sZMJpgaOEbOY3gMt
         qhVeV69um1B7k5fbbQgNHtS5Sbg518QRiSgmIFEeouckPyCmUZhJZCMpXOh8Iaewfeoa
         chPUV7/7fxyFicw7rRcLtckWxR7Ca7uztjI4lIYn56/7btpgoiCJbgT+WFzusIdXIQK0
         aEZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :message-id:from:date:dkim-signature;
        bh=cthBA3zb7N511qO1Z5PbOGt8yr0JK0gdmAa1O3sZ56E=;
        b=dRzuayK2NDyljX+RxXh9JWafKpnYKc8DvfkdFjjledNIcNEOETQpH7DFOhk9wsqV53
         y2Nd+WgY9LJGkULbm3b08g8b2sRNiBihPTCCwEgYllbAqgPGYjvhfNEnSTsK3N9MpQyC
         XI4il3NPgEryvM1GJsLEj7lWnA5+lClgDTEvgJNks0eZcJv+Lx4ohgAj2qWmbxhM1yf+
         lvBMI34Fm99K6HG5XClimTW3YMOKCE9ndS98LEXlo+9eq1cc3Q5few9AeZvNarDFKPPJ
         B8yr06Jun2EOySdS8RvrfbYD3+8P/DFZb61LQBQ2Jg0pJO7tg7nRRm2Uh31OQ+u8G8oV
         K5rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=GxF1iNEI;
       spf=pass (google.com: domain of jpmorganchasebank.ny13@yahoo.com designates 87.248.110.31 as permitted sender) smtp.mailfrom=jpmorganchasebank.ny13@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:message-id:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cthBA3zb7N511qO1Z5PbOGt8yr0JK0gdmAa1O3sZ56E=;
        b=OE6IYb9qD9z38tpS2ZhMIixa5tilij4s4jwpRDpaynP71FzsqFx2uHvpQRAiP5F4mK
         Wso179qCIb4mmFgVDOGFcezrampFoSWc9g8hG7qjrgyhGKbpnqa2jeLuJWQF63WfitGk
         UkZWsbeYl4fPhAk7IlInXGrt5WH18/i7bItQRFadkIaIVkWCbQVhQjxVSBS/yqZysACI
         2zBbJfbm+Xz6XixHUkKSJyKHR8lUmOyooATZIihvAMiSvTvoy2pSfWiEB+Sm0wJGqsR8
         l3yQYhWdyUBO4p9iiDlfPGAG7YCPeYPOzS9374Ox1fEWz/Kj2AyJbS5AWPA9ObXdMRyf
         ml2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cthBA3zb7N511qO1Z5PbOGt8yr0JK0gdmAa1O3sZ56E=;
        b=qdh1uqKkr6kNAUfdZCosbQrq3siPMZqrY3JGDCgyd+twovZlwHoqzu/imgxo2w9uCA
         /6M/WHBQ5etBLOPpGeDiSL7WLPAubPXimlXaf9EPvhC0Qgb9YZr5n/tHQcZIQt+zQYcj
         T7cgIUesxUFEtRW7z/LV1aQ1Q3ywDSBnohrlLwvutH6d4g3z6N95Qf1pQoSuaTo+O1hd
         ZzPKvNxpGm/oUydBKJFhILYRljCVd+0ulyoQdEH6kGJXHX5y5TGfO0zrhVDBqtQ1X81d
         HSMUlXTDO2+SHe5nrc94AojfVGkhaabHc4yqo5JQcmjxdzN9S9VaTvE/kskFYdo+QdYi
         migQ==
X-Gm-Message-State: APjAAAXaxqiNsPc3f75vSOGubb3jh01px1WkVfEHl5bXrnWeBKuA7s1U
	rgiTGwCg08xcMIPF3jFwRGc=
X-Google-Smtp-Source: APXvYqwiWP/QMvTP6xZrlCcUxQCKq+fp4Wqjb6cT+7Ha4A6NDQNJo8wUJTNhubXCoy1EZNPeWkkcWg==
X-Received: by 2002:a05:6402:383:: with SMTP id o3mr7141488edv.205.1570297538276;
        Sat, 05 Oct 2019 10:45:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:b02:: with SMTP id bm2ls3245184edb.5.gmail; Sat, 05
 Oct 2019 10:45:37 -0700 (PDT)
X-Received: by 2002:a50:d0d5:: with SMTP id g21mr21545620edf.204.1570297537899;
        Sat, 05 Oct 2019 10:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570297537; cv=none;
        d=google.com; s=arc-20160816;
        b=UuXO6qq+L/g2yKAgrzqVzoDe2XaYw00S4pKtDtZzQLOPbzDJuw+uhd1pcwzZkaNHdx
         G/L+5l2WveOtwmazflK5tLWCxmCf9r908WVK/ogtKo6Y196yGswa5NTBpQTvl/fRJ83G
         Ed7j/W7xW4cyioh2T1AyDK29ATsNtiLiuJ3Wo1bPV5RKmH5S6oyg4SoJct8/hHh5ht/b
         C27yUvr12yzzhbz6o67V1E9EZT9dWROZ6py3GGuviZZRD/D4NjhanO0nGL3/HEoPNwN7
         bY2ljhWLBAoS3k75+jz6wfC0YeGt1/A9p28kh90wX8U3BMQIj4ma8iZy/HQKMQMqLEUd
         AWQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:message-id:from:date
         :dkim-signature;
        bh=EE/TQ1hKDPvej/sSUj8etfyy6efGFy8mQqgJL+ozwaw=;
        b=bcpZOkLtxkk7XCw5+rqVjhWMOr2rvOQGesl5PLt5p4wubZoK4yuKzqKXX1rRMTvM2K
         xRKBhZ+N0dMVvCPVdVbMDxLUfl9UljdZwr77WBEjgnpP2sB2ocf2glSbTQCRhER8CIIk
         QQDALaWUTFgpNHLPVWvIzqBtM8YY8cYd34UuDYOYR4k2KkVg8TT5ixGEywajZTZo92Bg
         LfWiFio22JlS33ueRx54jq3WAyHwxZ9dQgE7ADoE0P3IZcRNHDYLRZHJPKv58En+TdU2
         nJBH6eWX4Muq1UPCHy99eO8Dy/NSnMmhESZPFNJewHia7ordIujB/Mxc1EPkD3uhO3lg
         J7kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=GxF1iNEI;
       spf=pass (google.com: domain of jpmorganchasebank.ny13@yahoo.com designates 87.248.110.31 as permitted sender) smtp.mailfrom=jpmorganchasebank.ny13@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic307-54.consmr.mail.ir2.yahoo.com (sonic307-54.consmr.mail.ir2.yahoo.com. [87.248.110.31])
        by gmr-mx.google.com with ESMTPS id q8si953062edn.5.2019.10.05.10.45.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Oct 2019 10:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpmorganchasebank.ny13@yahoo.com designates 87.248.110.31 as permitted sender) client-ip=87.248.110.31;
X-YMail-OSG: vbQ5TX8VM1nkmpNJpE.SVxgxwvyBNw3zIl3X785oC2Kibqq21YNyr47RKUBUP6D
 rokeHo_z06xdU3TunBksECF152SZjNgnsInJUYo2Hsfh_.Y1uH6ICz9VYMWyrS09AS6_rmwS1zgm
 cTGeTdExAdMm8UurUx9vkRV6PhkSfNxgS8oANs8W9xQnbqsf0x3KUCA9CIukimoU.GwguSvQVynM
 Vv5onSPKEbX70MAdL4AB.kOESc_KtQR2.AQ56Iq76pLBil.an9WGEoi5STqt6L3JxPurq1wmb1cE
 tgtYYmBCK0_E607MTwFjcZjEufsN82yXZBI1A.DldTH0s8fYBv_yvwdWnqKtIdoqMtFoaV8dbTbp
 .JKZZKF1SLV1w1FwRm8CnAT9Xn3WwftPzbamSMt0Eat2pg5ZFNgw8V1R91GdBcTpIjE.f6rarS07
 O2l9u2S2t3mPBKf.im5ZKSlNEVtirt2yFGkDw2prRTTp1UgQ7ARzyK4iDbCjAka0BU39oVxmcvsb
 R7.9B9sEyO9QEdbio3dTejaj.f5Wmfr072k67tSF8CRSdIoZgR6EzTf4qy6G6N6h5zxA.ytkL2m0
 rxlkinHhr91TbNTthhFH1YQzC20D_iFHEnIAtSdVtp.DP.22pQ1NQbgMf3wZZ7V55.pfiYPqoIcI
 mqjoBc7IiufCz8p7TMSRyuVf66woa6zh798PAlGSVD.OP6dzG.L4AJw1WHx.4yWrz7c1eE7LgFI4
 F6XttPTOUPW5.eLJP9O.P8Ez76JPApj2YMq6oAjjkrukf4mCphS2e5Oqej7pw0TGm_cnQ7XQTzu9
 epqMtiZ7cpz9Cb52bbEe_QhThwjNTZ8Z7eMHsegjSwGzVei5N6RmiOYz31LHlODx1Rah8MJmL6qg
 xAtRth7FD9_QtHPQNW9SnbRC3GdxaJrcPyswJJn9Nez0qatZk2tv7SjRZl1AGCNk0GW9GBfTSs0O
 ECT1s5fIq.W7pLaJnRYDw_Wl6uBbOJULnKK8SYIDZDnRw8def25eICowJ.4vHyvk4Jwa8QflZsHI
 YGGt.7PRwzaBkxRfC2fg81Zaz3PjSCdOdAlf7g8Gq8tO4TXf.DKNO7e5f1LITFh3VkQNKjomnQas
 fUakjtOL3evLnDefB7gtIKSdPpuHi7hcTnFuZHzZ3OKGS5rj53qRWxXhd8A_8wtfj2Tx7fubMDB8
 4xa34Vxe60wgnaWyHBaD1NMLDj7WiCEtmWppevXEPe_q33meo0QqcrZMwWEde7znBH8DWa9YAQxa
 NzwO_8ztfn0VFOYTWGYf4gfMwnRTOmpvJRhhds7XnIOtkKHE2GhQIZIIIfu5IoRiXKJOnuy_Od_b
 AsmqXCOk-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ir2.yahoo.com with HTTP; Sat, 5 Oct 2019 17:45:37 +0000
Date: Sat, 5 Oct 2019 17:45:35 +0000 (UTC)
From: "jpmorganchasebank.ny13 via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <679597762.5751901.1570297535564@mail.yahoo.com>
Subject: Happy to inform you, CONTACT WALMART TRANSFER To pick up $8000.00
 sent to you this morning.
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jpmorganchasebank.ny13@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=GxF1iNEI;       spf=pass
 (google.com: domain of jpmorganchasebank.ny13@yahoo.com designates
 87.248.110.31 as permitted sender) smtp.mailfrom=jpmorganchasebank.ny13@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: jpmorganchasebank.ny13@yahoo.com
Reply-To: jpmorganchasebank.ny13@yahoo.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

Attn Dear Beneficiary.
Happy to inform you, CONTACT WALMART TRANSFER To pick up $8000.00 sent to you this morning.

I have deposited your payment funds $2.500,000MillionUS Dollars
With Walmart international money transfers.
Receive the Money with Walmart | MoneyGram service.
Walmart partners with MoneyGram to allow customers
easily receive money transfers abroad,
Contact Walmart international money transfers office -Benin
Receive your approval payment funds $10.500,000MillionUS Dollars
HERE IS WALMART CONTACT INFORMATIONS.
Contact person. Mrs. Mary Anderson,Dir. Walmart transfers-Benin
Email: walmart.b100263@gmail.com
Telephone. +229 68823234
Text Her on this international phone line. (256) 284-4886 

Ask Mrs. Mary Anderson,Dir. Walmart transfers-Benin to send the transfer
as i instructed.
we agreed to keep sending the transfer to you $8000.00 daily.
Until you received your total payment $10.500,000 from the office
Once again,
make sure you contact Mrs. Mary Anderson,Dir. Walmart transfers-Benin
today including your infos.
(1) Your  Full Name==============
(2) house address=============
(3) Your Phone Numbers=============
Urgent to receive your transfer now without any further delay.
Finally, Send your first payment transfer fees to Walmart office on below address
Receiver's Name====== ALAN UDE
Country=====BENIN
City=======COTONOU
AMOUNT =====$58.00 only. Your first payment $8000.00 transfer fee.
Question======God
Answer=========Creator
Thanks
DR.Mike Benz

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/679597762.5751901.1570297535564%40mail.yahoo.com.
