Return-Path: <linux-ntb+bncBAABBDG2WCGQMGQE5AHSTYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CAF4688F6
	for <lists+linux-ntb@lfdr.de>; Sun,  5 Dec 2021 04:07:58 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id h6-20020a9f3006000000b002e6e81fda51sf3846554uab.4
        for <lists+linux-ntb@lfdr.de>; Sat, 04 Dec 2021 19:07:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638673677; cv=pass;
        d=google.com; s=arc-20160816;
        b=Le+20YE8yHCBW4BLIByAK0duR+LXjwPzgengAdatUNHMKh7Cv60eSu2MIPx1a0UFzQ
         RhFLAy22TYV4vt5BWjwPTRMQz75BarcnOo6jMpLPxTUjiMnPSF8bePJ9sUE5EbjDTmHK
         T6//vj/Jk91bdG4h+9PxXqRnhlr5Y75vUtSiku97J3H0Veuw9nWsj3VvBAM1KBdNPerd
         yAk492X3nLXYfs/Ajoe9FYDe/Rtau6DVRAyPleK88lsRn4552DbDuFRcC1UoG4aClCQ8
         NW4x3iXblAzwJJ/zFSYw0Ft6UErBmu1MGLQycyjKSrVKJDPN8ZcvAPy/0zwi96JJJNRI
         EOLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references:mime-version
         :subject:message-id:to:from:date:dkim-signature;
        bh=Jxhwi45nrEqBOEQMkRu2crVUYOlyz7235Fk0nrBXlxA=;
        b=CNNSHDyJqN5FFXZN1hr//tjjuTa9yGKi5wvZjDCs5allD15DEu+Rha0lsGyWxmgSdr
         ibDmJXtCSTMGpfWBTbHr/QotUGuRTqnOrjr3GUFvCOxiHXJAEX5NqwA59EYCizrRSa1I
         c1EYvbnq2rnAB0lDuht+MmlvsxjBzGuju6TUzPe+qWlNXGbSSgJe5ga4WKRueZt5u+7a
         OkFYBh6znKamSb1bCvn/ivVDu34L2dEvzhktSi/1O3MJuvl0xiHKQN3JwX0DT8iTSQBS
         uWbVde/FsJnIMQ659iu8MMuy099RNUbRevHOx/T4Vc0pfGLYBv35oHfD5IPd8hbW3PXl
         DkLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com.sg header.s=s2048 header.b=k22oIl6K;
       spf=pass (google.com: domain of pharmaceuticalmanufacturing80@yahoo.com.sg designates 106.10.241.39 as permitted sender) smtp.mailfrom=pharmaceuticalmanufacturing80@yahoo.com.sg;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com.sg
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:references
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jxhwi45nrEqBOEQMkRu2crVUYOlyz7235Fk0nrBXlxA=;
        b=o9eT6qcS6JLdJbQ8MWH8vc8QvKTEcE/l9pejuG5ZSPhkGM+eo7Pst8T3xpwocWnRW6
         JkycsJhCziXTf6ANwQ5pVLcmnIqsqRKoW9eGClFrhKoKJnXpQAE8pvxH2q1XN1YKZ29L
         O0xHzTeSCtyTEpQue/C8yVQZzMYQtAMQsy4HQQVx3vuPHxLwcWqHTf9Mv/vuHI6fiuMD
         wKH+ZBRo/TIdivMN+Iq3WwanbtFn03Ob7MP6yp5kfXyD0ui1o6sW43PzjSohcXAJmcod
         ch5AkB9U7YGoWq6fo8ATnHGw/DBdWm9xLJxLmdcqW3YxooV2adGfH5r/CUvIPWDRbwXb
         mbXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:message-id:subject:mime-version
         :references:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Jxhwi45nrEqBOEQMkRu2crVUYOlyz7235Fk0nrBXlxA=;
        b=ZmgX5XA2iMVe4Y1Rfh9jOdr9e2BO46h+WFOViAETj9cPfBizaHhnTOEQ1I499W6eFK
         fGcTDnu2qQ6mTMNWHsAgkKmDgO+Vs1ftuv1ce2ahfA4YkBTrKBiFgD75XI0ylTTYTYGu
         jFe2NP1aSTSIYdqCzWuCnfRXnmpETBs32VGV1yZjQCO2xH0LJ+A+vsUkxBzA9TrPR9GX
         U5YGeXGZ+Zb10l/lgLJAhYOvnB99oblYooGOGb7oWr7Tb282kDuBUu1hzgyUzqcNlCRv
         uA9swpmUJ1Uvyz4OdR/rvxMJW4mr5qjlbf0l+OkUjO5EM5TZiDASTJJRyYDJXMr4uFQA
         1+OQ==
X-Gm-Message-State: AOAM530AcjuTY/1nklk3/eH6bjWzn3/6uKYtCkHv9RcFXZ0S32wfWIGV
	zqpMFkNnrO8iSxprdJtZ25c=
X-Google-Smtp-Source: ABdhPJwH4E7+6yVZPtF8u0dfu5yR7ZDXIk4cFPJ5LJFu761LoXFdWviSovc2HgCSfiMQJmq1A4xnHQ==
X-Received: by 2002:ab0:36c4:: with SMTP id v4mr31645658uau.8.1638673677129;
        Sat, 04 Dec 2021 19:07:57 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:41a6:: with SMTP id cd38ls3960878vsb.5.gmail; Sat,
 04 Dec 2021 19:07:56 -0800 (PST)
X-Received: by 2002:a67:b807:: with SMTP id i7mr28787498vsf.52.1638673676653;
        Sat, 04 Dec 2021 19:07:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638673676; cv=none;
        d=google.com; s=arc-20160816;
        b=JKer1vaeO6y8pqQXu/bv1LGLv38WGEoT1o9CptgqbYaK7XSpQ4Lm6061sa7AS0t2vK
         1BTZnFV1WRZS3D7O2r2nQ1kHx0Zr3/+SwRi5EXYun2/iMq0gZZ8Fmc1DmNxOZunFjizo
         3cerjH4gbiVrr6131hL2NY1iWwLLCPb3GlnSv+WgW3jJ/9zKKtTrPSjZJ30F9z/ZU/Hu
         wFdZOWsxm+KsNZ7jXpj7M10YxwBDbSLR2+xSKdaVANTreIMg7Dd+aBPHwbkB38OPP9CD
         9TEeBjrN4OyVRFQDzhvAIsav/eYLem/YVv4RTd3acPt79N5XEHrk33D56XtozuVre7oV
         s2wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:mime-version:subject:message-id:to:from:date
         :dkim-signature;
        bh=r6lQsmKlMKpNkqqodmqQ5uVqGEcs/RyTrDAF+DeC/pQ=;
        b=QCXXRUheBcTMouJZex4YpoF3tHo5Uf9I8C8RvLIy7fMPc+krxOTRJp7oaNKeQZ8jwB
         mrVOQD/IzYhDzeK4SbYkuHGKLpoRlgycbHFc/iycto79Mx4iet2fQK3qsq8/yuPf8eK9
         FfpxO6Bml//3l4WoTCgm+F/y4TausYkX3jzOFMmreN3ouJPtORL4i+mEgjnYHkxitfNB
         l31NaoMY642e3F7Ejf99GY9grwa5Gdy8DveSRTPrBrr5XTsxkZXMgxExE/B3WDk74QD4
         vCxAhlGtMuI/45to+3g2/z0h0a9txCpRdoG2W6mekFH+Wdpd2esz4F4Qubt+iHtKfX5E
         gr+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com.sg header.s=s2048 header.b=k22oIl6K;
       spf=pass (google.com: domain of pharmaceuticalmanufacturing80@yahoo.com.sg designates 106.10.241.39 as permitted sender) smtp.mailfrom=pharmaceuticalmanufacturing80@yahoo.com.sg;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com.sg
Received: from sonic307-22.consmr.mail.sg3.yahoo.com (sonic307-22.consmr.mail.sg3.yahoo.com. [106.10.241.39])
        by gmr-mx.google.com with ESMTPS id x19si401734vke.2.2021.12.04.19.07.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Dec 2021 19:07:56 -0800 (PST)
Received-SPF: pass (google.com: domain of pharmaceuticalmanufacturing80@yahoo.com.sg designates 106.10.241.39 as permitted sender) client-ip=106.10.241.39;
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1638673673; bh=X0F5QFVVd0rmHdykwqhVaxIwOBzASoIvZKSGEUqL9kA=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Nch7EGMlS/Jv+dRWmNF6cPqiROo/IC1NNWb4NP1XeYj89aTyoDbwQY6TzBeo/h2fA7gMdSa47XRJX/EK2za791CK3afcCqykEUVStQpwBtuznJ5MuT/vwBw0F47y8xIm1YhQcotY69ax8TnbwWm7MJS7AwvidS+SBBmKv3zsoMk7iG/XZuos9T6lrC+kF9PP8jC2GgWPiKAa4/JB7c1R+JSZXDuDnp3M+O7JlsXOx5+eHAKI1onh/j3KNDDIOFFRVdgU1FuecECROuU78k2QJMw6kSdZ+t/e20VvAjBdtdkAArDOhw65dD5IY78kCBBzdr4ikZzfW/qHSgCx5cpBSQ==
X-YMail-OSG: yOqW1IAVM1nd2sVA3wX3gEdI97mUFhN9U0w2cxOaWKfoSMMkxsSFumHfBRz8kVU
 XfD.igWaITqlhhnwUxU1lSGbN8HgOO22dxeuzbwKHxqryII5rJ3i8ec1V55TS.4xB.a9sZr4kHHI
 0r9a4tWeOEt8BrS3sGuFud9Rho3ctIXBdWScEzYt_1MIpv0hCGw9D12I5WB1V2I0ZQ8Pru43MJ0D
 G8cm7w_HuZng3J4XtlRP0VvaUvw4b6BaeLaOLia7yGUkZhLSmLwiiYaiGXNnSiNGpNU.71GW9W3x
 .JfM8_BiAd_7DMVFyUrC8pQeiZnxiMLkpPOqMzpp3spWQHBdNHYaxZeBRW4ufZAOvWAMRPuPIttV
 ALzJvIFplza1K9.IFlYYL8JmfkaOAfz_YXhoNxnol_tN65mBoMMzR36b5o_B.nPsAToAmR9gWyhM
 FuvyND9w3Ppj35TI6RPXiYMAUZsM3E7iyhEAcAZcVLVGpsSpWxjVziAzLpaRileAEANagFnfllGR
 sjCJCv64T5Cye9Qth1CILjXUoxiycSRk9C96qTl6pJS5joYEcYR2KccENem7eQg2U8Go._wWCbP.
 qmMm.qhggOlCcvoXMdRjphgdBijF0xa07AVc9eaVxc3LVn75kjv.aTBsW3BqHPzkWSl_qW353yaX
 GNFcPQG5xBteXVoihh1pEKFwP37mmWIk.lzvTevzm1Cuv2i4ECR9ZbFJ3_kY9m3p_SQ..L8.fxwF
 N10GvHVlz2q7vGT_GNVvv6bBhdDMJaHb80fqiXY2rd4jGpC48utSh.jefYilxwD912drhX5uXxDL
 5YlEcxPeXCgPjkSPDaLXzRm8ugioS7utUjkpBRI1j5A3AdwWpeSmTgUw2VOv9LJSR5In39CPWSty
 Vj54ee3bdKPgjNZuqxV9ZGLa4J3uTn32Iws543PrqF7rGPqFsJS5IoG7a1eo89FFHpV02op_kljM
 vKoFgqbeW0FBmRBsM7c5sUP.W0s77agd1QsTrRzqVA53_ksTPhoPA5jZAaUUI4Z7n1xGvuLBGmbv
 nJLfpSe4yDffWPKd3LyF1zhARDeTkqk2wwy.nPu4yW2zvS7zkyoLjXRCQ1.7dysO_CX.6kN04brF
 mjQHA2Z3I8tAgnI2f6zbeHlB2uCshVCzMHkwpuPQn6O3GORwcCmgTZL0_VbH1VPafI1iyWF9fvqE
 0izC7xkY1J5fbYI5DIC1M9YfzVb1QIXqxPmOU..5eWEwcn784Ay5ih4jWmJAlGyikwdCxmfnSdg4
 NiFz6yRxnFFYIcSc2l38kxZFPeUXhr7NtnlzV46eROmSj0Wz14doQjuffowe5qhCPHBYPEubLjq2
 .DdTL26fj2t.yU.xZqWXJ4FiXDE.Z8Fzi.p4EesQPABgbqjZf50TQfNrtgNXZH97fMnCXs0BjFbY
 TpI3mDd3v6VtuDSrJsV.C.N5HKkGAm2aBZpc3NNuPyPmLaUx73stUa53.JUGNk7XNWt0pJrFloyW
 FmhBbIefTS3_zak06mITYWchAP1slFkANr052x8pB6xIXr3DsLKHNoGVG7ZL.vhl03e3LNv6Tg87
 m3Yj5rP0XO9gTS8E9vR5rXUgB9CqM75GB1CKI9jw3chOKYCXa8d4uC4PH5ky2j.dAI0Ja.KRpI56
 TvWa.u2KJwGniTvcYnosCFonib51DoNyeMICdiM0sH4HegKjctMpWIFrPyzCb6h5CmM_n77lW2uw
 vLWA_EpymWRRFOGRJPhM.4SvX3KZtlhtnwZvfLTG22P7vuPEu0AZIesITDayzPQJ5uIte8UmZ3Vc
 fjHzb6Ke3JrdLxo0DoTN7wC117nOwu.5etSl6oh7NXmADuQlp_iBoaXk84hFN_8o8KQHPAKXKelD
 4Qhaus03wT4dsUL.EF1UOuLSyK5ITPJRlMy58D1p.LE3Y.B9MeDM2BTHj8sN_IRYyoe0XjJPtjJC
 cCDTr2kfkFkIZG5NZtCRuDM3_afzVCF5bbBklVqHdAIOxnKEjgy0OTa7SA6DH.NZuDaAzvoaKSza
 uzf_DmZ9Bmsj6MGEVPEKFs.Uq9849josl0jrb7Z__KY6Lj0563S3lZ5cTfDlx04xQMVewhdUWXaJ
 u2vyzfjnEYtGE5rEb7n6csxxgcKA707SCwHaMt7VuvjlN7YJ2DqosBy_ke3tmKlexcOOkSgiWUzF
 d6tx_xfsk1VJkSUivMjRCzRAI8ggViUxy5k2UdUKmQCDv9L0SyACzHrE.ivq9qdM0a1c-
X-Sonic-MF: <pharmaceuticalmanufacturing80@yahoo.com.sg>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.sg3.yahoo.com with HTTP; Sun, 5 Dec 2021 03:07:53 +0000
Date: Sun, 5 Dec 2021 03:07:54 +0000 (UTC)
From: "'pharmaceuticalmanufacturing80@yahoo.com.sg' via linux-ntb" <linux-ntb@googlegroups.com>
To: "britishhighcommi111@gmail.com" <britishhighcommi111@gmail.com>
Message-ID: <1424513128.258601.1638673674158@mail.yahoo.com>
Subject: 1-1
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_258600_178442310.1638673674158"
References: <1424513128.258601.1638673674158.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.19306 YMailNorrin
X-Original-Sender: pharmaceuticalmanufacturing80@yahoo.com.sg
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com.sg header.s=s2048 header.b=k22oIl6K;       spf=pass
 (google.com: domain of pharmaceuticalmanufacturing80@yahoo.com.sg designates
 106.10.241.39 as permitted sender) smtp.mailfrom=pharmaceuticalmanufacturing80@yahoo.com.sg;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com.sg
X-Original-From: "pharmaceuticalmanufacturing80@yahoo.com.sg" <pharmaceuticalmanufacturing80@yahoo.com.sg>
Reply-To: "pharmaceuticalmanufacturing80@yahoo.com.sg" <pharmaceuticalmanufacturing80@yahoo.com.sg>
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

------=_Part_258600_178442310.1638673674158
Content-Type: multipart/alternative; 
	boundary="----=_Part_258599_1502703077.1638673674120"

------=_Part_258599_1502703077.1638673674120
Content-Type: text/plain; charset="UTF-8"



-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1424513128.258601.1638673674158%40mail.yahoo.com.

------=_Part_258599_1502703077.1638673674120
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div><br><=
/div></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/1424513128.258601.1638673674158%40mail.yahoo.com?utm_m=
edium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-=
ntb/1424513128.258601.1638673674158%40mail.yahoo.com</a>.<br />

------=_Part_258599_1502703077.1638673674120--

------=_Part_258600_178442310.1638673674158
Content-Type: text/plain
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="a-c.txt"
Content-ID: <e3864d91-af59-8d56-0ba2-f304e0944549@yahoo.com>

VGhpcyBpcyB0byBpbmZvcm0geW91IHRoYXQgeW91IGhhdmUgd29uIGEgcHJpemUgbW9uZXkgb2Yg
ozUwMCwwMDAuMDAsKE9uZSBIdW5kcmVkIGFuZCBGaWZ0eSBUaG91c2FuZCBQb3VuZHMpZnJvbSB0
aGVDb2NhLUNvbGEgTG90dGVyeSBwcm9tb3Rpb24gVW5pdGVkIEtpbmdkb20gd2hpY2ggaXMgb3Jn
YW5pemVkIGJ5IENvY2EtQ29sYSBpbiBjb25qdW5jdGlvbiB3aXRoIENoZXZyb24gVGV4YWNvIE9p
bCBhbmQgR2FzIENvbXBhbnksIJNZb3VyIEVtYWlsIEFkZHJlc3MiIHdlcmUgc2VsZWN0ZWQgdGhy
b3VnaCBhIGNvbXB1dGVyIGJhbGxvdCBzeXN0ZW0gZHJhd24gZnJvbSBOaW5lIGh1bmRyZWQgdGhv
dXNhbmQgZW1haWwgZnJvbSBDYW5hZGEsIEF1c3RyYWxpYSwgVW5pdGVkIFN0YXRlcywgQXNpYSwg
RXVyb3BlLCBNaWRkbGUgRWFzdCwgQWZyaWNhIGFuZCBPY2VhbmljIGFzIHBhcnQgb2Ygb3VyIGlu
dGVybmF0aW9uYWwgcHJvbW90aW9ucyBwcm9ncmFtIHdoaWNoIGlzIGNvbmR1Y3RlZCBhbm51YWxs
eSwgd2UgaGF2ZSBvbmx5IHNlbGVjdGVkIDIwIHBlb3BsZSBhcyBvdXIgd2lubmVycywgdGhyb3Vn
aCBlbGVjdHJvbmljIGJhbGxvdCBTeXN0ZW0gd2l0aG91dCB0aGUgd2lubmVyIGFwcGx5aW5nLiAN
ClZFUklGSUNBVElPTiBBTkQgRlVORFMgUkVMRUFTRSBGT1JNDQoxLiBGdWxsIG5hbWU6CQkNCjIu
IEFkZHJlc3M6DQozLiBTZXggYW5kIEFnZQ0KNC4gU3RhdGU6IA0KNS4gVGVsZXBob25lIE51bWJl
cjoNCjYuIE9jY3VwYXRpb246IA0KNy4gRW1haWw6DQo4LlN0YW1wIFNpemUgUGhvdG86CQ0KOC4g
QmFuayBOYW1lLCBBY2MgTm8gYW5kIElmc2MgQ29kZToNClRvIGNsYWltIHlvdXIgcHJpemUsIHBs
ZWFzZSBmaWxsIGFuZCBzdWJtaXQgeW91ciB2ZXJpZmljYXRpb24gZm9ybSBpbW1lZGlhdGVseSB2
aWEgZW1haWwuIA0KRHIuIFJpY2hhcmQgRG9tbmljICAgd29ybGRjb2xhQGV1cm9wZS5jb20NCkZv
cmVpZ24gU2VydmljZSBNYW5hZ2VyIA0KQ29jYS1Db2xhIExvdHRlcnkgKFB2dCkgTHRkLiANClRl
bDogKzQ0NzQ0ODcyMjI2NjcNCkVtYWlsOiB3b3JsZGNvbGFAZXVyb3BlLmNvbQ0KSSB3YW50IHRv
IENvbmdyYXR1bGF0ZSBZb3UgSW4gQWR2YW5jZSBhbmQgUGxlYXNlIERvIE5vdCBGb3JnZXQgdG8g
SGVscCB0aGUgUG9vciBJbiB0aGUgU29jaWV0eSBXaGVuIENvY2EtQ29sYSBNYWtlcyBZb3UgYSBC
ZW5lZmljaWFyeSBPZiB0aGVpciBXb3JsZCBPZiBXZWFsdGguDQpDb25ncmF0dWxhdGlvbnMgb25j
ZSBhZ2FpbiAhISENCg==

------=_Part_258600_178442310.1638673674158--
