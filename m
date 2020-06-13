Return-Path: <linux-ntb+bncBDCOXMNUBQIKJ2ET64CRUBBPWTZ36@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E921F83FF
	for <lists+linux-ntb@lfdr.de>; Sat, 13 Jun 2020 17:43:38 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id ch1sf5471967ejb.18
        for <lists+linux-ntb@lfdr.de>; Sat, 13 Jun 2020 08:43:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592063013; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcrJFmoghtCfgM5yWB9ij9kdIKNp4dZzIgOUGMmPwy6pf4/aPF4OCtZuVP8Ddl1h4G
         fC7kYJZeJtmEWysw4lYaS7oeU2pGtyMUGggpboQxG548BjLT881KWvAmEbr6Ls7dfm6G
         ri4AmL1Lo18NCr5gfuUK/SK7X5SUzq0tJVjpO/9/0NE+vC980Kyr2FSXbzylntYh+u9m
         G3vQ0ILzxdjW9cXvqnhq0T2wRb9pLw3XV2FxdSQdUHuWX8vRV7R48TA4XKoZwjV1cYDx
         xnCvnuhuz8z1lVdfGL3mAiLIZOWVBQCcIFzv4NzE1AM8YhAfm1sJsa/az4oCwTfnHjFo
         BxKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:references
         :content-transfer-encoding:mime-version:subject:message-id:to:from
         :date:dkim-signature;
        bh=VM+gGxSxZUW2NY/nTJw+afO4JKT7vBfV/p4aynKCfQY=;
        b=sOCYRCN8n5ASFoubiY4IDZ8D//VcXMQmaTBE8w+aOKycrjyBplVmH2RmBAdk4Cpv4E
         bMGO2Vga++ZsaWbomag2AG2o8YLzz/mtTOaQfrL8u74TnJpXbuSAoBm7KooycZ0Acadr
         lzac4MpRwG7ob/dQjkduxt9AUQmaaOx+SGa4DQXM1jy1F82WUKLHCeGL9JTAwl18/lwi
         dqUaAR91ZPIyOcxr9rJJBQpMJJvnWVrsSrg8s94bvKg0MXSNPk3WyeKb0POec4nBATKm
         oUusFVuiAgCdzrZ0rOdax7L6qGQAfFtjj7KUJ3e7SohH1ppvibgteP15r3H2/Mlbe15m
         YvYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=eqKtCIPL;
       spf=pass (google.com: domain of rose_gomoo101@yahoo.com designates 77.238.176.98 as permitted sender) smtp.mailfrom=rose_gomoo101@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version
         :content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VM+gGxSxZUW2NY/nTJw+afO4JKT7vBfV/p4aynKCfQY=;
        b=bbPiVLGJB/uUjfQaW0wtbYQmpKqQ74imfyHoQPZgLUXduGS7yqscwzCDRzM1C9kdLj
         iwph7GZuZgQg0JtB6nd91rByVgBl1rmWMKmEJdaGM1kl6Etci4bC7v/DWQ/HQMMQapVl
         AMKZ67Fdcgby2aawm2NcGspJcEeZVa52YmhesUlSRtVOUxkoApU+i/n8MXz5UsVtUYHt
         +l1QulN8dEb79zJSr3ldNxFdmBGWh758b2mhO7t7HIFxbIO8ZDgAo/Ma5QuCrvyxzsj5
         RU+H9dBrYgBB9ewfZ2CcvFxb/qqXsC8euP+WP/nn87cCO9w5NJPixhuEfhl5nKoZ0C82
         8fLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:subject:mime-version
         :content-transfer-encoding:references:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VM+gGxSxZUW2NY/nTJw+afO4JKT7vBfV/p4aynKCfQY=;
        b=Kx9Wu16n4db5yl88OGnVaH1UFcIrx7vRN0S5vE2yZ5KYYYWHWhyn7ItTVAmydIj8Yd
         qkY46fsKLCTIxNqJwrt52+D8EY6QCrvQoQIxLf5TgFonSjJjDpSm5HCyCVbqkZMQ5wDr
         t2Yit6xo5gjIaCoxs59pVc9qajVhKElZtmoDW2Bs7nPPoPofMgQUznEdc25oCwkWt+F7
         uA69pT3cZwCtXJANLkP58vvOBQNTAX5a3yHGR/besf0eaRSPfnAL/bySbU8hX2NoJYz4
         6vRwEQQXYwZvNA3XvCNKgJ/2jtRsAvWwS44Nxlnfj8OJqkPFzqk4D13eYrz6mXjp0yl6
         plHA==
X-Gm-Message-State: AOAM531lTAPGOg5JVwmdbZ3Qa7sr73niVPAyczYfK3bHLMtGE0Mf5+8p
	DjnN8hbfoPw0VFfiWzykaPI=
X-Google-Smtp-Source: ABdhPJyl121rBhwY5RI2bZQ7HqB/1dS9HTHyKmrFfqkQ3ZdVsmTjXkdOwI5Gtx17KP0FRw3rXSLlDA==
X-Received: by 2002:a17:906:9397:: with SMTP id l23mr19153185ejx.79.1592063012940;
        Sat, 13 Jun 2020 08:43:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a50:8c22:: with SMTP id p31ls8514467edp.0.gmail; Sat, 13 Jun
 2020 08:43:32 -0700 (PDT)
X-Received: by 2002:aa7:da17:: with SMTP id r23mr17099177eds.261.1592063012428;
        Sat, 13 Jun 2020 08:43:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592063012; cv=none;
        d=google.com; s=arc-20160816;
        b=r75gsXh4qIX4FQzs81dzQZR6Ybw1Tib2yPKOqaTKXC3Y+W+wf2XoEAxP7i8jpDhVLQ
         tth4C36zY4AwdVOdTz2UK+/whhHn7WyFHkqvpaGICoPeRenReBmK4ENx460WrT8ESYMg
         Id5CRsCxgqoH8tgQjiWBwRqntGPV66ld979S64sOvePXcad9nckE4PR71UbWTKlaXqXV
         wLUF3Q/DcpBeSSRKd/Wwil4dexqi6FuiIMLjZGHbxB/J7E5sOtIEBa7ssAnjt5K5LnKK
         z3nv5UfqrWp0AGY19RPps5Ev/dtnbizGolrCdZJL1foCbT8bikakUVT/DLSvKMTCNRta
         eA4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:content-transfer-encoding:mime-version:subject
         :message-id:to:from:date:dkim-signature;
        bh=EdQ6J0sRRv3XBxt3j7IlulUVvRg4uKdicik//r5GkY8=;
        b=KWQF9puoKhFT4LYEHu4E2yDf5+0sAKRx37NDZa8IJQpnyWE6XaRgDlmRqzRZkcz7Ci
         JJ8xU4QiTejuLUjHryJm6C87ZPY2OM+vLEqWAD8iNT5J768Xmr94JeSnThmn/R9qtXpj
         kEbBOMAidUks7CPSY5o8FZ869kE7Tuumf6vLxywZn4qVOWmgZihCI6Kfhpufox9+/4Dr
         UeSovloia+Epsp85rGyAbjnN92zwXeMdM7/YP8JtcLjPUiUmwrKVr3h3ytNQATaX6AYr
         h22swnNVc9XK9/nik9KPINUruoVDTbFWwqxa3lPv3te5gyNtp1931knRjS/CpqAMxje7
         C4Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=eqKtCIPL;
       spf=pass (google.com: domain of rose_gomoo101@yahoo.com designates 77.238.176.98 as permitted sender) smtp.mailfrom=rose_gomoo101@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Received: from sonic301-21.consmr.mail.ir2.yahoo.com (sonic301-21.consmr.mail.ir2.yahoo.com. [77.238.176.98])
        by gmr-mx.google.com with ESMTPS id r19si482054eja.1.2020.06.13.08.43.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Jun 2020 08:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of rose_gomoo101@yahoo.com designates 77.238.176.98 as permitted sender) client-ip=77.238.176.98;
X-YMail-OSG: LPRBtNsVM1nCmhVC1amy5jcW7SC4kovqhhhyZo_ouicxjxcyZ6QkT6O3_3THinP
 _ySqGi7Z7mErY_JZutb1DXbTo7zAxl7FMbm3oHaBQl2.miOr2_eMRI9pk1Q3bokXZc33U7zHs05a
 MaDXot7nNfT7r1pY57evKeikrvCxuZ7x3hAIvz5xjrtIZ2qsjl0bWQKI7Mox1Vjz7Mm29McsuJsM
 y.Ga_QM1AMKZa3odD_HcjZ_bxGnNtBvvTl63iBl_SLWfKxH5vIdGrXhUgvsSNq3ounCyQ1o3Qnp2
 XCsqYIUj5sQ2ez3xKYAqC1lLD.gy_NRcAGPjjHkQFAVsj_HeVU5hPbis9fQpiUJ63tmjwaUtwbmk
 giShiFzMF.8kryE4YX8MFgoQM6AnD7xm0YUOtJ1bGMrzt7IdVq9qOZ62pIErqR86KCqxADzwgC7i
 N2LMiKu_Ug0lM5YKDiT7bU9WnWuOyQ4DmEOe_JjRcBm_ToCl.Jb9euw6QP.i31J3z4m7ju8yLYze
 GgtjOX_Nz.wQ62kR.pG4qW0cociGvlLDgR1I22hkqBorAt9ZDgti8VW1u3yq7i5hxqASq1QUt1s1
 ev6cdDjG.MCYVi4dhCMY5WVJ9RHmQNkBC6YlSsnUzJ8bU3IpgkwVlr2kl8aBoOxr8HN_UqAVCdGE
 nwg7dqOePh1dJEw4VjpyGihgoWz4onIe.OzBOYnKvzowDQx5But.wehGmOtPOVaV_4SzQLVSLYSj
 5Vj2INA9v472fNk8aXzIQgCXvHB5C.1StRGgAi1QXu8a9lImLV03CyBmg7xIzz4VnvrDzjc52tsc
 NEL3eDVGgzNYyzbNMDkE4Wu1Q8xNd05GqyeFGMGguHcdofTKGS8xjOCbYQh_Z.D41Lu7vTFQgMgY
 Q94362CVLeJEnd1XTaxtHXzyqF7bSlc8Qn1CzrTy_PiGaARNyHELC9I09P511j6Gw2MXWA9p05LP
 imiIHhoTUw.3moqflnWwQ1lYsq5IoSDskY4y2hT4JCUpcGRuqAORuC5uCCByQAQ3qp98JJjcnabI
 sNO98Rh9gM218W0yuuXwFWTosmaOEsXbzxdqKoYXHW2VV3OreCVJKiXO0e1rkhAuezqrejJuihq3
 mR6Ce00XrL9PbOy5w1dTCwf8WFesNbe6afVxyEucZK4AoqcJF5w_1Mo1z7vCoNPAXUg11zcM3VTx
 SxokaQBEhufTXbvxJS9hHOz55xFS5IJS3JjOns3SJZTu_o24QloK2GhFd.sq5ETxjof1XkFxd9pT
 jE.4LGGr1TeePEqh.uT6vyXwtf4ZxrPy08hq9FcW4xPcOrVenvSL.TV7tRQhxZvU2RQ--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.ir2.yahoo.com with HTTP; Sat, 13 Jun 2020 15:43:32 +0000
Date: Sat, 13 Jun 2020 15:43:27 +0000 (UTC)
From: "'Rose Gomo' via linux-ntb" <linux-ntb@googlegroups.com>
To: rose_gomoo101@yahoo.com
Message-ID: <7709890.448665.1592063007309@mail.yahoo.com>
Subject: Dear Good Friend.
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
References: <7709890.448665.1592063007309.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.16119 YMailNodin Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; GTB7.5; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.2)
X-Original-Sender: rose_gomoo101@yahoo.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@yahoo.com header.s=s2048 header.b=eqKtCIPL;       spf=pass
 (google.com: domain of rose_gomoo101@yahoo.com designates 77.238.176.98 as
 permitted sender) smtp.mailfrom=rose_gomoo101@yahoo.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
X-Original-From: Rose Gomo <rose_gomoo101@yahoo.com>
Reply-To: Rose Gomo <rose_gomoo101@yahoo.com>
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

Dear Good Friend.

Please can you help me to receive the fund I inherited from my father to yo=
ur account in your country for business investment? Right now the fund is i=
n the bank here where my father deposited it before he died and the amount =
is =E2=82=AC2.5million Euros (Two Million Five Hundred Thousand Euros)

Please if you are interested you can contact me as soon as possible for mor=
e details.

Best regards
Rose Gomo.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/7709890.448665.1592063007309%40mail.yahoo.com.
