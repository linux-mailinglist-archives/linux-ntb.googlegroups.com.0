Return-Path: <linux-ntb+bncBDM7RQV2QAERBKOHSCJAMGQEZYXTK4Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 140FB4EBDB0
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Mar 2022 11:32:27 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id h10-20020a05660224ca00b0064c77aa4477sf5636983ioe.17
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Mar 2022 02:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648632745; cv=pass;
        d=google.com; s=arc-20160816;
        b=f0skSe+lhV7XVe8W0SnvrMNMf9LpjwWYQ7T47haYwDImjGWE5Hl7dpjJIUqdumqj5a
         Mh2m2kZ73Rs6mnD4tjF/fwLGXSMoYucEyZd0ITAA1jJ6Icoi/cReCn/N9hopn6SVDj/w
         9z9hAhHEaKF3bGFU5JnBAXhElS9Gf0nk0fn8NeaZavgdNGb+ClzBYcnTLTg8dJxZw8al
         uLZgkhspAOMnxPHPgVRqVN0RoHW7VGKg4f16y77yo+dhO7aSijZB5rfpHTVrGLGCPv2R
         AIJGAd23KYYwXadTisEQ0K5fqUmC9JaIQYq1c+czwmqJMP8Oqaqv4k5P7bTHbDDv/zor
         re2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=heFe+RhLfHPxPrBdZ+WBzwYmEbjsoG8A6TvgdgW3MuU=;
        b=pFX411Yuk7ANdaIoMEnEMLsvgDc4y9y1bbieJG8/Lc870eZ5do1IdsbR6Pab2E4uLj
         5i0xUOCLG6pQ///CnyeqBQWHv7QYdNBO2VkZHDBVuASNhhlOW7rs6VfZ6LCCmG/1bz+k
         rUZkZFvBO8MzcLaaR2prjR9WSZ8bg4uk/bC5em1qfaMUzBm23Zj4syebjyx4n3FTPlR8
         MOVatRVoVOd0aY/49N3m08vOYLU+rom8QpcCJUi05Ect7Ezf+DpsXqDu9uu0woyaNGDS
         gj1dwAHdd4BoDCU0rb92yAdVCJ4s1rvphPv9X+jWMKHOeg4i/Vj961se6xpoweZMQWqN
         i8Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FFfIAk2m;
       spf=pass (google.com: domain of moubarakgoumpougni@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=moubarakgoumpougni@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=heFe+RhLfHPxPrBdZ+WBzwYmEbjsoG8A6TvgdgW3MuU=;
        b=ZGmWqHibtubU0KBItW2ySoppyz2MNysLATHBxSXpMNvhl3tPbN3dOvtPtigOVLZcg5
         BEygQqGLn0bfrYBLU/b7SqRWbQvr4BmnzP468ZVLHCQIeF0gmBnEwrbFYLWU5SyU96ms
         CagYedZ4HJZF8f6o9VyhvmXbFTgvl6ia1Dq7T+7Bkk24ASJ/1zuHRIJcDcpNYw9gMSBR
         4R8CdHJRmlzgu01v41qbWgM0+mg6Xa0stfmFsb5sc5dgYEvzwqez2vJM5HeGCGgouzRw
         /58rIKmowtDH/B1f+IsNTBiSxsp6rtJsXLzK572qiULXWlWoa6nR/nFoBgNnhIwc3tlr
         Uz3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=heFe+RhLfHPxPrBdZ+WBzwYmEbjsoG8A6TvgdgW3MuU=;
        b=BnyISdfMCBXrMxRE1ySTyaaHShuvvTURIcZjsS8LM6bSIF/7Og7G227w+rdLaOFFcb
         m9DTmfYF1VAMCt7Y8QkOpYrlw7kNuy71Y3rnurgmgKRS6usYY6tgZA2xubAnnVse6whE
         CuoMbV0ZDiHtt/ZIhDzbOziiIyityXW/nZMii+vetjz9qvV0yJZXYzy7hjvjezxqmE0w
         d3PmnHxkJnJYS3uKyUvYObh36u3GBlWKIsSs7fNRSuwwqci9LzmS6W+MmRqt0uDBtjhZ
         1vZ2hvdsAKfnWDTDAMcEzWrmH++tztg9F4gg6TszDoP2SIPPErpRHkXP3lwi02U6ii4w
         Fciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=heFe+RhLfHPxPrBdZ+WBzwYmEbjsoG8A6TvgdgW3MuU=;
        b=YgeIPcnyKPgnRgpK04ROFlQmzZBWSJHVvkhdZ2KBNWqU8qDyOaXwfwFbd5TDAU3TC0
         BwIQhhvSzSW4nVBkWgZ0uOUr8J3WNImTtesQjCf+bfmWkktrG4rvK5/yVlpiJmMnBQNh
         b7aOZnZPf5AD3HBsRrOOS0WbnKPZ5iMqmJp8OnVkVw35k83d9ka6QpEaZfsyn57jlYK7
         ll7Qd6C06LFauvuy4jDkSFa5r9m9MEB6cVJ+ShHSIT+gYkUDD6x962BatQmBnCKQ8pAf
         fQMDkP3Ashcpx8sa+l6u0n81HVARnLC1EXv05/2RkZfvdRaF0TDQ/WmF2LVtYFjGxBSA
         y/hQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5322NAtcB2VFluBMj+cf46PcjJC+ZwR915c7hyV65d1IvyWFiP0e
	UqYix2H7iGwTXVYIKYOdpL4=
X-Google-Smtp-Source: ABdhPJxd0awVdfrerFu9lRLarVB5sCmE85vQl3s4rMOv8Cg0Zy8Bj6LJ8BvW6VI8vd+u6UfklpC61g==
X-Received: by 2002:a05:6638:d53:b0:31a:c87:a704 with SMTP id d19-20020a0566380d5300b0031a0c87a704mr18581423jak.207.1648632745658;
        Wed, 30 Mar 2022 02:32:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:a499:0:b0:323:63cf:a68b with SMTP id d25-20020a02a499000000b0032363cfa68bls324652jam.10.gmail;
 Wed, 30 Mar 2022 02:32:25 -0700 (PDT)
X-Received: by 2002:a05:6638:a3a:b0:323:5c6d:ae20 with SMTP id 26-20020a0566380a3a00b003235c6dae20mr11063330jao.80.1648632745123;
        Wed, 30 Mar 2022 02:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648632745; cv=none;
        d=google.com; s=arc-20160816;
        b=InkAjQmDpnrlk8xSH+HS9h7hGLe0siCneDjO6n4cXhBshWA+8sT2meL765wb+AhV/c
         RVvI0pSJN54gUQWzguxpvzNy373MtpTXs22Ft/4ceORiYXPCX1AMSQbczfvgkNVHWn1j
         XuvqhdpQv/NHDWSgBmz/jVcQSR1/gX9s8EJAh4TtqbkXXi/IBxtsm9+GQ32eosKkoV9r
         GrWIBs595ptOcOdxobwIXT3wPxX59sgIiIeL5nt4bc3g7wZelq4OonJ33Yp2idJB0kLD
         NActEa2jxHa5Li9Dyzc7cOy/WroP1XjwQcRUJNxXEaP9WlvsVZUmf/umjeiqx5K+M2gS
         xbXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ajds4vQJqzzfWfFoJdFk3NcQ+94bj0ecRubwlQfUBUE=;
        b=ie9tpmAjdwaZExxdn0Jk3Q75t1wjnPUywEobknql5YSniJSjOqW1kzeja6nctNmw2y
         0kUK2S5UY/xF4/QnaIrsh1P2dLngozpmiwDHEAH2tq11I6p332PLOXRs3pv9ZGk241JG
         BNYeIGd+WkVqtdEasjNCRwV/XIgOPATZFp3jeY4PWfJaFX4LAQfd8n2IId4A6VboAfts
         MuJSKuerrjdCDApy22c3Mxz2+x8p6cDUi6WD858HBjbeFre6XJC5ZmaUeCy/SmrN+/+E
         OnppBhcxhyFN8w4B1l2qwHC3eRzth4wKDaGtmhvpQWNRPeF5xfsBiFoEbkjyF+wp3lxe
         bz+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FFfIAk2m;
       spf=pass (google.com: domain of moubarakgoumpougni@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=moubarakgoumpougni@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id y6-20020a056e02118600b002c7e25b0919si935388ili.5.2022.03.30.02.32.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 02:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of moubarakgoumpougni@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id j2so36056456ybu.0
        for <linux-ntb@googlegroups.com>; Wed, 30 Mar 2022 02:32:25 -0700 (PDT)
X-Received: by 2002:a25:8303:0:b0:633:7c97:5882 with SMTP id
 s3-20020a258303000000b006337c975882mr30281392ybk.564.1648632744741; Wed, 30
 Mar 2022 02:32:24 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Riterhouse <sarahriterhouse89@gmail.com>
Date: Wed, 30 Mar 2022 09:32:07 +0000
Message-ID: <CA+u5MaFJWwNJrxOftRQBGEhunv36dncV=0Fq1aicHx0ygPy5vg@mail.gmail.com>
Subject: HIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000001d8ffe05db6c39b8"
X-Original-Sender: sarahriterhouse89@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=FFfIAk2m;       spf=pass
 (google.com: domain of moubarakgoumpougni@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=moubarakgoumpougni@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000001d8ffe05db6c39b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E6=82=A8=E5=A5=BD=EF=BC=8C=E8=AF=B7=E7=A1=AE=E8=AE=A4=E6=AD=A4=E9=82=AE=E4=
=BB=B6=E6=98=AF=E5=90=A6=E5=A4=84=E4=BA=8E=E6=B4=BB=E5=8A=A8=E7=8A=B6=E6=80=
=81=E3=80=82

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CA%2Bu5MaFJWwNJrxOftRQBGEhunv36dncV%3D0Fq1aicHx0ygPy5vg%40mail.gm=
ail.com.

--0000000000001d8ffe05db6c39b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E6=82=A8=E5=A5=
=BD=EF=BC=8C=E8=AF=B7=E7=A1=AE=E8=AE=A4=E6=AD=A4=E9=82=AE=E4=BB=B6=E6=98=AF=
=E5=90=A6=E5=A4=84=E4=BA=8E=E6=B4=BB=E5=8A=A8=E7=8A=B6=E6=80=81=E3=80=82<br=
></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CA%2Bu5MaFJWwNJrxOftRQBGEhunv36dncV%3D0Fq1aicHx0ygPy5v=
g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CA%2Bu5MaFJWwNJrxOftRQBGEhunv36dncV%3D0Fq1aicHx=
0ygPy5vg%40mail.gmail.com</a>.<br />

--0000000000001d8ffe05db6c39b8--
