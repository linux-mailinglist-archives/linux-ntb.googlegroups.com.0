Return-Path: <linux-ntb+bncBCL5PDOG5IGBBHWLROCAMGQE5CLXHSQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE053695F3
	for <lists+linux-ntb@lfdr.de>; Fri, 23 Apr 2021 17:20:00 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 198-20020a6218cf0000b029026162e35700sf9580499pfy.10
        for <lists+linux-ntb@lfdr.de>; Fri, 23 Apr 2021 08:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619191198; cv=pass;
        d=google.com; s=arc-20160816;
        b=LEJBiOBllysbLPLqOdDqG1mPRvG0tvxjy5RNH+/et2wGKzVnzqTz7eKWiIdV4Hgekl
         ckQlorEHk8aEAhCEjTHpkikj2hnCzsNUfUQ0VEPMOuXT8BTZojUuNBfsFVUWuhAu48kj
         zD/MI6R8nm4HOxVzIS1sDuTORkFZ/nZePJVMSRJmP+vgG6nzNrDyDzvrPhPd+o6y2Eow
         Pr0w1v4N9E8jkk4aPa/oz5/4q5foQz7JGx3mwQHbaCn5fmBgIs3YLuO5EeedvbNANhfQ
         T8TzdMxpIoag+TAdX0msMu4J2lvljCwtREpfWR2/M7TcKVPg/nt0U7Tr+lHXhTT6CVVI
         1NDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=xcr0TQdJJYu43eBULC8ncLdav6HzPFqmHFgLl5V3f/c=;
        b=yUHm9KBtCGiFhJQUni8aB8aO0EsOFg0ba30VDuwuMdt2WTjm9WuVJidNYNy7g3itI3
         kqTwM0DPxIC2RWtE5AA1I5rB4ks67U0ROeMf0Sz2Or5QF4SPv8TdsNX0f5P3KrY+xm4Q
         N7S5CF464BqwJ0hh3Mx4f9nvFgsBZTc0XeDDpAaOHqHPdSe0/zn6HiN9HomWttfksT2m
         r72Pbw0YfaSe+Z77AsHdY4JC0bYjjHxzq04YxFemX2eXiidLMu1kRpUEHYwJLtNZu19W
         yNN2mRaX8POC8WUddKKEJAfthQtMfjrDY5dM1ajEcSjeUm8jejnJShTZoR8RPW6IpdSI
         kN8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QLjgCZto;
       spf=pass (google.com: domain of damesalle132@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=damesalle132@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcr0TQdJJYu43eBULC8ncLdav6HzPFqmHFgLl5V3f/c=;
        b=oWIKeSUZRLFl+EUvSshImE6TimvT06OnOHcDTlQBcbQL+VGW0KAH/kFtz3NpaotB6H
         +caIfoxge2nD0TTV7/gcwf7c5sRyBNQ7hcojDsQK4da5aszdyo4wGi3OYz+o5bI2irHF
         CXs3ph+uZiaOJJc3d0QCGuV3K1Sm3vqeQOhG0rLWXdrr1m8L7yBl/60D5Ojyc06/Kt7M
         wHSks8lmZb/sb0yKoaFhT+Hjk7tVJU9YUE9yA9CCrySbrg9Tn63YrxBiKQ8MaBv2zw4C
         y4WWO7yPmBDbSHZC2so1lkRagdVgJ6QzjthlUd+qXy6Neaqv/k7eSgbVt361st4qlsgA
         scag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xcr0TQdJJYu43eBULC8ncLdav6HzPFqmHFgLl5V3f/c=;
        b=t4C7M2r4v6MRttEXgAlnT9cOU8/RdZHjLq6v+P6FAD0WTL7Urs7T7uC75GKrD8hl+k
         RW4AiXHb/knjEA9wZXfUx66JBBOdGfhgTpX1rgfzz2IH0NSJNmYYybZvBV4S3RebN/7O
         n7nM3q23B2vwWtqrXSQK1e1I59gfUqQHEyv3T3JmCWZZSUWgkuKZHZFEMqXaTnTMxosO
         RdLBYJnEF9CooD7TcglcCCgqhWczokE90c/QHL1BD2SpOuKFF3k2Ofm5cQNLwnBympJi
         s17gw9SdoCIdhKKcJVvf+TsUrJOd7XhlLyf+iQdBBinZI6/g5HFo+jNSlkR4wLnDW1TS
         6scA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xcr0TQdJJYu43eBULC8ncLdav6HzPFqmHFgLl5V3f/c=;
        b=gcbNXPD3Fn3dhJYnoI6h8DpAubR4JDkra4pCE2jgAYzA7+8YtuvWyFL+P5dXkYPUr6
         YSdSOx735eiad/pqaXZeiJAqqAbsi5K8UEqrahMjP+MMQPtExnGdPdbhtoIg+1nP0ui+
         j1rlVEJGaW7vhaXZE8YZmjxKUXEJ4cHXT15vED78sasT3zGJxMZ9MT7xTMpiG2h3vMf4
         /KR6GwanCFGA87mNjXQWsP0rt9zOaaIK02jdR2kVYGssKC4f70iC0bMB8McDvgN9XAs3
         5Bqa8zbQlQ6UEt/B/re3+VB9Ta98TEAso/SzJ96GulDXBtY/F7dWbsF6r0BuNr7KPIDl
         B9AA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531ICH3o2dzuiMpFNUmMey+S48y17NjPXmxJ9Wvio4rI7lL2GQOr
	Lt4IKCNr/YzVl4Q24qU90DM=
X-Google-Smtp-Source: ABdhPJzhPK5QrDPIQFgRw4ApAKiBxrXyQrz6qmOQBykTjG8t47lXlfrjWJ2Ufoi2MjXZke3F8rwBFA==
X-Received: by 2002:a62:2943:0:b029:24b:f35d:2565 with SMTP id p64-20020a6229430000b029024bf35d2565mr4456997pfp.52.1619191198612;
        Fri, 23 Apr 2021 08:19:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:4853:: with SMTP id x19ls3659915pgk.0.gmail; Fri, 23 Apr
 2021 08:19:58 -0700 (PDT)
X-Received: by 2002:a62:5cc7:0:b029:24b:3525:9dbd with SMTP id q190-20020a625cc70000b029024b35259dbdmr4467627pfb.3.1619191197943;
        Fri, 23 Apr 2021 08:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619191197; cv=none;
        d=google.com; s=arc-20160816;
        b=RBRm4JzqJx2pvFAp80+A9m2Sw5dSGQv+lyQM9iaiVnjByW9On624rR1QAFFJalhZH4
         Or4+dfP1Y0FU+Yo2dnsn/ASs9R3VeeIE46TJuhCkBtegK7fPN83cBtEcCjkum4JvbYbr
         O+vu1/HeaqAtSQiXofOwfs/Nkieay3FhqPeON+hVzcqYAS5SqrR0IQL0xzyLsLfwXT/s
         g+TU+i2l/SMeedQfJXAzi60t8NXB+NX5Wl7bh6CBHAwaxmlxtv+OPB4YOyufarbADlx+
         z0OYqZB1YPU/TcI+RhYv7rjNf5DAloen8Lwwc3ETHIDwIaj0Dz1+W1wgZk0mDq7OpRSL
         EBGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=IeyU6ogacHzhKikUzm5Y/puaLChm3iyHuJBsQWkBdfI=;
        b=nLKunR1NGA6q/+k7TRbwsbqYVlhcBm0oYS+fPmgsaV1GWpgLdkzcXmSb1NaGPkDTrV
         v7wt/RzchaNed0ABtnDA7pxbWndAdCny6C5gM3P0di8vOVTmzI1dXveRXdUbST3LNGUw
         o4x+aZBoZVDmnQF1Ltfw79WiOKW+rueB/EtTx/KM8j8D3imW/jDA/LVyQapQngTkz4Yj
         6bed+yp2oleEGe0SCGpztfGb9WGMZLA7G5Sud4eq6AO8464dvl4RW6Y3qUPinGbEkkyb
         kOFVJ8V/NWkEE3I7ZAcDNXoSibxd/xmOBgKc+yrq3ANxnffRg6/ylms3doPfuEKtHeQp
         JfsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QLjgCZto;
       spf=pass (google.com: domain of damesalle132@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) smtp.mailfrom=damesalle132@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com. [2607:f8b0:4864:20::331])
        by gmr-mx.google.com with ESMTPS id a8si685484plp.2.2021.04.23.08.19.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 08:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of damesalle132@gmail.com designates 2607:f8b0:4864:20::331 as permitted sender) client-ip=2607:f8b0:4864:20::331;
Received: by mail-ot1-x331.google.com with SMTP id y14-20020a056830208eb02902a1c9fa4c64so9099936otq.9
        for <linux-ntb@googlegroups.com>; Fri, 23 Apr 2021 08:19:57 -0700 (PDT)
X-Received: by 2002:a9d:d05:: with SMTP id 5mr3916087oti.312.1619191197748;
 Fri, 23 Apr 2021 08:19:57 -0700 (PDT)
MIME-Version: 1.0
From: Karen J Brown <karen.j.brown211@gmail.com>
Date: Fri, 23 Apr 2021 15:19:43 +0000
Message-ID: <CAFLzmNvqMJ__1dfGK03QoX63Skb07ipTVT93AU3adSEOGmc_7w@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000002a536a05c0a55464"
X-Original-Sender: karen.j.brown211@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QLjgCZto;       spf=pass
 (google.com: domain of damesalle132@gmail.com designates 2607:f8b0:4864:20::331
 as permitted sender) smtp.mailfrom=damesalle132@gmail.com;       dmarc=pass
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

--0000000000002a536a05c0a55464
Content-Type: text/plain; charset="UTF-8"

 Can we talk please ???

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAFLzmNvqMJ__1dfGK03QoX63Skb07ipTVT93AU3adSEOGmc_7w%40mail.gmail.com.

--0000000000002a536a05c0a55464
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">



Can we talk please ???







</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAFLzmNvqMJ__1dfGK03QoX63Skb07ipTVT93AU3adSEOGmc_7w%40=
mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/CAFLzmNvqMJ__1dfGK03QoX63Skb07ipTVT93AU3adSEOGmc_7w=
%40mail.gmail.com</a>.<br />

--0000000000002a536a05c0a55464--
