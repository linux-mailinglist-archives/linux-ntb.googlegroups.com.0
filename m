Return-Path: <linux-ntb+bncBCSZ5FXN4QLBBINJQOJQMGQEYO6IHXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF21509592
	for <lists+linux-ntb@lfdr.de>; Thu, 21 Apr 2022 05:50:57 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id h65-20020a1c2144000000b0038e9ce3b29csf3900867wmh.2
        for <lists+linux-ntb@lfdr.de>; Wed, 20 Apr 2022 20:50:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650513057; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZmAyApQFwEAPVbksYNDGODDfraSCU3+cmEsqGkS1EWE1X+3nQV2RHl/MERgXGdg10U
         ebExlmmAxDlFZ6Kr90DczaWEYqYS0u6Psymiu2IVTZx+DN2XIquj1kl1EcoUGsdLLveh
         LgWrd7v+MAjn9mSOik/86nZ21VfrB0sGlf/tyjYLUZSecpmFFWJWCwR6gkPPyuErRvO0
         ulUz8APY9RNxLuzsv9ypeNqLdUXrhlcIkEpCVMQ748AtsWQ6ejCHAn0kTXH+UwKokb24
         zltDfMAZVYO1YDb9NtUZjLvR9U1efnoY21+fvTRKlF7tdRDz6tM9BlM7jZrQ3lg9Hc/V
         QI9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=NKxQbHFf8ZFbQdP/McksqgTzaV7skgMeSTWONR7Y930=;
        b=vG2ji6Tg4FpmH+RY5/WZmxkVuichY0QiXI4XAG8kA/z90Rvi5F6T2MZOlsZxqaGMMe
         8fj6pIF0xjbbAhPZQYb5tWJ3sKnW3QF1bkX6bwh8vSgugzVyUvAslCR772zlLieOzn4O
         fKynrO15xjr/MFVcJPrsZUlaOmvqA9U3PsJab6AWK7huK2xW24ZmPFso+ZzNvm1trZ5+
         h3Lfbez1MMbbC+AMiNKBNPECO9JTqjfoxNPbcxlkaHekRmf6thWUxotjO8Y7bJflGh1t
         ExRGL1kN22or6Oh7U+LsNNEj8h3h9bKDjKL7oJFjWPMMpaVxfiEp5qKMZLlhFVrhG+de
         QP4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cG72rdnK;
       spf=pass (google.com: domain of colejanet397@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=colejanet397@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NKxQbHFf8ZFbQdP/McksqgTzaV7skgMeSTWONR7Y930=;
        b=XBk/euc1TJwsHpFdz34hXET7rW0hTMRFJY7LVBAJY0nwqrgOQA4f2Azr3hED/DiBhm
         nfXlXFAza/xke9rJ6GFrVhWGhVkxUFWm+OCQ4qQf1QpDwOaSkCpMzcFoyWUTZMAxBAlS
         GF49byetYcwdMpvIPsGqxkYllAks5buwcNcqC1Lby4Kc5ghhCpODAeeBPgndHkf5agTH
         zYuyGmR0kpUohpNS1H9833+guwu4QcHUFlIY6VV6+MsdSqm9w6O3meXutl5MAeY1lKJA
         Km+iSCqDelNaLfE+zT48c1qNSddzEmMwjtvjUHO0Znd476ixXW0oQup7/fpoeYCvc1JI
         BuKA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NKxQbHFf8ZFbQdP/McksqgTzaV7skgMeSTWONR7Y930=;
        b=mob8kxE0nYD9IggpDKvqgVlGPZ79H4uLnhvyyE0f/mXSrGYFvRd2MhCBUF0HLd0Vzv
         5RSN5BIz5bHP3nPFT5vLRBi0NC4Wdxz5KVkNGXscuXHKb0vzG5qJz2yydvv55U2+dPRC
         yOnpxYRf1jHLcZus3Y4bDRohC3QRFGjQPjJVjrIyuKYr7N/+FrS7oe5kywjTlSK0D01P
         8t5OUaCtyyL3QfwJI2awGD3S0fQfgljfCmJYbjQ1PK0I0X2ZZRaMQcLlrwD3jE/FS9bJ
         1UvHxAHLVoreR7zOL7sh9pPtGdZzS2RcbmcgikXjZ14gUP9NeoAg18cRgEsUHHhzg+sf
         frdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NKxQbHFf8ZFbQdP/McksqgTzaV7skgMeSTWONR7Y930=;
        b=D6seEMzWT8ggg87t05JMAkSIzUDvM02Bk2y185w27aKdxK8bmb9n/0iI8E0Q6UR+UZ
         IWyQTU7SHO7XszfiUcboILBihghHwDieePUwRr3Pr1MZvzIbkwGkZO/DcDiRAgsQdBn8
         62U4FD1HlFfxIGLk6vJuyaFbnSVJLMh9hxidvDtZWHveNlvWZXzZWkFT9Fiq+6C0GnjP
         Iu6TgFDm5cv/GjltlNz0af17/B4uapDh1fN77DQC7Wv/ypSAdGKwCRUnfGKnZ5BnpHHN
         VG7PtWsW+RMHgvLk44apOWkPwtArC9eor8zIjakGyAbYB6+KtQpQsEJKNoMEzMyQDHpL
         Q0IA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5301NOJFnogZYGV6eg8Fw88qkByxLe1ym0tpC+bSxMx737lP+iEH
	dRAmXeOdKUFVlqG09WTLg7Y=
X-Google-Smtp-Source: ABdhPJxb9pUd55JJymySPw8E82qzBV6wfj4AdNKKCL3dJpRfoDS5L0u1Kwaw+k/4K6gjR/3btKttFQ==
X-Received: by 2002:a5d:4a81:0:b0:207:9abe:2908 with SMTP id o1-20020a5d4a81000000b002079abe2908mr17500045wrq.341.1650513057401;
        Wed, 20 Apr 2022 20:50:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:47a7:0:b0:20a:a30e:f9ec with SMTP id 7-20020a5d47a7000000b0020aa30ef9ecls4523123wrb.3.gmail;
 Wed, 20 Apr 2022 20:50:56 -0700 (PDT)
X-Received: by 2002:a5d:4fc4:0:b0:207:aa64:6f98 with SMTP id h4-20020a5d4fc4000000b00207aa646f98mr18155377wrw.89.1650513056486;
        Wed, 20 Apr 2022 20:50:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650513056; cv=none;
        d=google.com; s=arc-20160816;
        b=EQsDVq73OG/NzKb3MMEBg50cJBmRK9m/+iKEugO4FbEJezi78moceHDuAyfXF3SGCf
         S4iCuczXALQTwuUWlpIEFailsfcvuJHTsn9maRj2Y2XrKu0+SHowynmksnjRzn9Ho8KT
         5pTVOHvMEVSsR61NvzMzJFuC2qtACYc/yXGrgqh1AMlejI5iTJqlpLwyeuO2GXMVHZ2I
         es5BBB9X3ej89dthJq5E6B1+wpTHegcQCHSfoEcgf+Ym6W1J8wuYaBkdMB5topWuLJ+2
         TmLUafeJ/nL7jWQs9sKkJHyq3rvXkeTA5jDlAWZSBf/gA/D6GZkVRDPEfiMDhAY1Apof
         04zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=Gg60XZ/K8xYVHntcjg4dxK1qzvOHsg3NzNQ+X/FQ7wM=;
        b=tPR0yLfL1/UO7ieq1YmD5IHijXDcTzWEnjxJG5aHc3036tw5RkdKm4JBwLjSi9MK5Y
         ZH13nma4PhBQ2ZeyaxzpIA94rc+nsr+l6WQXfg1h9bkXHkBHFflGFrq+f8CUAUiXDqeN
         ifOFB65VABmr5fFK4MmOOYAEmeY1a7K9JirDKwU9y/c7g30cpS9ByP8h0oQGb2eXQwk9
         18KmxQRPeFkoncIsmb3G+MbqOgb2Aeq1wejM82hSigtlgIcgUrK5hX8s0U5hkVZg2a7J
         1byLK0ZoDU2wRwd9z7CWgiDKDwGnJRRQiyCzHEXrkVlIYCjzvmvKIPDDy5u/3X9IAFZk
         P6bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=cG72rdnK;
       spf=pass (google.com: domain of colejanet397@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) smtp.mailfrom=colejanet397@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com. [2a00:1450:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y19-20020a1c4b13000000b0038e70fa4e56si64841wma.3.2022.04.20.20.50.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 20:50:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of colejanet397@gmail.com designates 2a00:1450:4864:20::642 as permitted sender) client-ip=2a00:1450:4864:20::642;
Received: by mail-ej1-x642.google.com with SMTP id i27so7369846ejd.9
        for <linux-ntb@googlegroups.com>; Wed, 20 Apr 2022 20:50:56 -0700 (PDT)
X-Received: by 2002:a17:907:a0c8:b0:6ed:3184:18c7 with SMTP id
 hw8-20020a170907a0c800b006ed318418c7mr21086191ejc.375.1650513055677; Wed, 20
 Apr 2022 20:50:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a510:0:0:0:0:0 with HTTP; Wed, 20 Apr 2022 20:50:55
 -0700 (PDT)
Reply-To: baelhadji24@gmail.com
From: TURKS BOH <colejanet397@gmail.com>
Date: Wed, 20 Apr 2022 20:50:55 -0700
Message-ID: <CAOnXyykf3Q9u_hJ8n4=Xt0YZk+Tr8YHRtvT3OsxvaJfu0NZqWQ@mail.gmail.com>
Subject: please - urgent response this your beneficiary for inheritance fund
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colejanet397@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=cG72rdnK;       spf=pass
 (google.com: domain of colejanet397@gmail.com designates 2a00:1450:4864:20::642
 as permitted sender) smtp.mailfrom=colejanet397@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

-- 

Compliment of the season


GREETINGS MY DEAR.

I know that you will be surprised to receive this mail from me today.
I consider it imperative to introduce
myself: . I am Mr Roland Max.
I work with Turks Bank groups

This letter is highly privileged and it requires your immediate attention
because we lost one of our big customer who happens to be from your
country India
also has the same family name as yours for the help Microsoft fine out
both have similar Email address.
That is why i can reach up you on Email and he had a fixed-term Deposit
worth of (US$7.5M) with our Bank before his death.

This fund has been order by our late customer to move his fund to nationality
Any organization - charity  or Anyone from his country as beneficiary
inheritance willed fund.
I want to present you to the bank for the beneficiary inheritance fund.

DISBURSEMENT/SHARING OF THE MONEY.
I will have 60% while you will keep 40% as your personal commission.
once the money is transferred into your account.

This is a very safe and 100% risk-free involvement
As its  AM  next to his account officer of our late customer.


IF YOU RECEIVE THIS MESSAGE IN SPAM, KINDLY KNOW THAT IT IS A NETWORK PROBLEM.

Don't Forget To Reply This Email Only:  baelhadji24@gmail.com

kindly adopt and treat accordingly.



Best regards.

Mr Roland Max


PLEASE - URGENT RESPONSE DEAR.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOnXyykf3Q9u_hJ8n4%3DXt0YZk%2BTr8YHRtvT3OsxvaJfu0NZqWQ%40mail.gmail.com.
