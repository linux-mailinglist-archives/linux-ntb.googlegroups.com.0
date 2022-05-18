Return-Path: <linux-ntb+bncBCT7TQ7X2QEBBN7TSWKAMGQEQNJAXAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C6352C6CF
	for <lists+linux-ntb@lfdr.de>; Thu, 19 May 2022 00:56:57 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id z186-20020a6233c3000000b00510a6bc2864sf1695421pfz.10
        for <lists+linux-ntb@lfdr.de>; Wed, 18 May 2022 15:56:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1652914616; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGA0UezL4EQ921aAT8KlfchKAn16O56Bxeiv1cBcJGJbwDGM8O6Um/zFuLS3SKY1Xj
         hKVd7e4/fPmHYYQMpY9j1aYZVnmjmIWmarZxBMHkQmn3GL5x+smmaBsn/ZoP2SXzAn8N
         /y2zQY+cPOQEsWHqSwpCCDgBSi7/lk9weKK6UedyCzoDFTesJRdd3ftm7lLQBzse+YCw
         W6S7oKVQFZMsKll2kk83Jbg/WJKBK0bM168L+pHs5trAfhTMYZkej+zJpVVFBGJgqckz
         OZVo6bjkpzlglxNTIRNH9MvUOfZOfKXtb7uGhAiqnW4DzgxUJ0DA8AFh8/L2m54Idczp
         Jd9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=WG6nEi4mNrA/A4UXBl77/zukV+6Sp2rAJ+NRQSFY7sg=;
        b=IC+qk3+T30M4IwTN3qkeNlPtLRA1eewWAODJxJL07aHM1uLm+FBQ0+oIQNb/0jpIun
         592+VNznxiT8fkWHotTdsc4aaQJxrrCdmyceEKOtK3r6LGNzumfSWzNI31ONOmDVxxhN
         R2NAAMrprajwvVbBqK7k/xqivX1fxr3qm6uoSkGrDXhMtCkooh6OhrN8c+OuxLeYSdFT
         9GV7AcJ66xJOFWjfRac42IRqxkvNGLf1+5DGTa6+Iq4YAQmlGAtVuxQGapfRWtMNw1hn
         Lyx8lycIuNOf5Ar/3nE9ExR/QWhY/9YjwGIjFVp++YwZJyUEmU+Cr+rYmRxxRdpK+syW
         V6Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ovbcf3BP;
       spf=pass (google.com: domain of weboutloock4@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=weboutloock4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WG6nEi4mNrA/A4UXBl77/zukV+6Sp2rAJ+NRQSFY7sg=;
        b=SFZMsSPW9HjeX7ZzDy43MAqwYenS6ctrelEmNpNhUKfUY9WSreEWfzy5ufhkhi4nSr
         tJzZCjNAUCQwWrZrPMhES5ll6tGHGXkAv3slfy+y7uaB0zFT7ppelqgC6Kh59EUKYIpg
         KxTCSRvgN9wUJ8NDRm/tzO/9/Ov1FEDvveGqshW5Gb70rHrLbort6gqQ8YoCeMqp+3Sy
         NtuhVENav6ANOo/IRQQbglelZWGIBylQQleoesekt53ZujprOfU7qIVqfL/8DGssVZiI
         o23WPSnYSbpTz/eh+i4xCTKAK14Uxp0ZFjOwM28T4KLF29494AwzY8ErMW14C6qh6VbK
         F8aQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WG6nEi4mNrA/A4UXBl77/zukV+6Sp2rAJ+NRQSFY7sg=;
        b=iyQGzhLx6qFurhGSY+FfsJsyrURIUvrwG4zeTzIZ/AGcwrlRTu7evRt9yCZ4Z7jt7J
         mHtfhDKuMox+xsMu3AvxWYFhFOF0rFjsCo7KeayuA3nRQRsRlEtlwlMM/+Wz9aN+cLpc
         EVTAgzHZsEwifIRqBMncr2oeOdP41u7PT++jk19+XicwwvTtn7OzQ58/GzF6W3sYwl1P
         iifbBeJ1enfki27y6NNFALDOOjd1rQy6v8bYBNrlbvJskTKQmeGxrhM47JalCOWdIdri
         4gWH6zSfj1xxucBROt0sZ3YdHGGp7hofY+6Qob60q7O+IwMRLnuUtnpSQNpl2I0FiIx/
         gSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WG6nEi4mNrA/A4UXBl77/zukV+6Sp2rAJ+NRQSFY7sg=;
        b=ub678uUBHdK7mQuu+iKocL75L3YAC8n7iQr4AQrCAItRpDW9qE7unUEOvzLFkJHie2
         NxQ0Jb6VyBG1EIe+2x6Mgto67JJ/RY5+E2rvRzuh1OfcjEfMmWEmGzyXqLbRIl0JH+CC
         hruV4psPMU0cx7Cb303xj+Kp1aVjkrgi3M8EpHjl3956/XzhfTT7gekWrQdDGLBHbG/b
         tIcGR1lG/dyfK77YVPL46ccWaILg1XqmQCQHtwkHIQF1ti4OSPhPdvZSbDKdNLTFSrwO
         +iY9jhrpxGQi2p3qDDbfRiC8nU7e2IrIS0dftrQXwbnrE1046ESopURq28ovNVgwBqI7
         ZOgw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5309mrl8QBhkqKeQ6COccmuPPOs33vk/LSA6pCK7+oMMsBWu8C9g
	lziJ3g/aApeUK6+3YR5ffYU=
X-Google-Smtp-Source: ABdhPJxqG8X93GQS0i9pfFxNsCbqYXXdsC/BL70Pco8j1XVw0ktotfIy6XUHcnfagbEzbb5cchd72A==
X-Received: by 2002:a17:903:1248:b0:151:9708:d586 with SMTP id u8-20020a170903124800b001519708d586mr1928866plh.15.1652914616013;
        Wed, 18 May 2022 15:56:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:bb8c:b0:14d:d65a:dbdb with SMTP id
 m12-20020a170902bb8c00b0014dd65adbdbls626666pls.6.gmail; Wed, 18 May 2022
 15:56:55 -0700 (PDT)
X-Received: by 2002:a17:90b:4c09:b0:1df:b7a0:e5f9 with SMTP id na9-20020a17090b4c0900b001dfb7a0e5f9mr2391109pjb.76.1652914615193;
        Wed, 18 May 2022 15:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1652914615; cv=none;
        d=google.com; s=arc-20160816;
        b=mSnELMFYUBnA/zo44mxsH4nR7IxB+wio5Tkb/N7oLZvs1Q2pjU1PAwPiJHzehrz97o
         NERUopBqT0HfLam8uzrCSQabjSGSKWXP5UnYt8YUoTrkBwDKrIHfb6M8ejJbjTkj9tIO
         M0EOlnldsuDFUd6B4anZMIU17BU9SvUHMd0dIZpS9hq3g0Xkct2N8WzfXpCuP57zc9hi
         DGTH7O2B5xgc/GmZFFZsaB8uytVHxVUq8R229FgoZungMFvKiJBmtyyYdJjcR9e6gp+j
         evHpVqd1F90xOcZcYlIt9vlTbxazAOxSs8y3sVbiamxyUJxy+xjiU6pzViOMjFKClS6w
         dP+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=mZ3wqB4NmL7z6lpFr/h15h1rYqsZKafJnUpMVahbEPg=;
        b=xvZ7xouVCLjHq5g2zoK8MU8Su3BoFmccO6fRXHcHee4DoPAElu+yYjBEqgpW6yJv5z
         AeOL0VhF5LH2ZFlCkFHCEUC3FJEul+8GMmM742DL+Xwk1fdF2Bjkgu2V5X0x5YL3oXpe
         Krp73ARw1KfSK7iic1xKNokeNsJ7Injwtm6hQC6W+ttD+ImYBbtXsNja4kOTH90cvFm3
         7sAfmwKzYrXwDOS9umWQdaECRL9/Eu+PefsKeYrV90r8ILrFEXc2N149t6K9u1yi4J/E
         vDaJY+hVwQouy1TWoXc2TeT6RhorSWLE6mmmPUtEUa7U6s0KvBQe7OcgRCNWbx2SLTuZ
         zVng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=ovbcf3BP;
       spf=pass (google.com: domain of weboutloock4@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) smtp.mailfrom=weboutloock4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com. [2607:f8b0:4864:20::b2b])
        by gmr-mx.google.com with ESMTPS id j6-20020a170902c08600b0016188a3eb3bsi125897pld.0.2022.05.18.15.56.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 15:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of weboutloock4@gmail.com designates 2607:f8b0:4864:20::b2b as permitted sender) client-ip=2607:f8b0:4864:20::b2b;
Received: by mail-yb1-xb2b.google.com with SMTP id r1so6131289ybo.7
        for <linux-ntb@googlegroups.com>; Wed, 18 May 2022 15:56:55 -0700 (PDT)
X-Received: by 2002:a5b:f87:0:b0:64a:9aa6:e181 with SMTP id
 q7-20020a5b0f87000000b0064a9aa6e181mr1852277ybh.157.1652914614913; Wed, 18
 May 2022 15:56:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:7000:7143:0:0:0:0 with HTTP; Wed, 18 May 2022 15:56:53
 -0700 (PDT)
Reply-To: tonywenn@asia.com
From: Tony Wen <weboutloock4@gmail.com>
Date: Thu, 19 May 2022 06:56:53 +0800
Message-ID: <CAE2_YrD=5bo8j9+ah-xptEBBV-HEC4=Gb0SRHf996phiopc3WQ@mail.gmail.com>
Subject: engage
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: weboutloock4@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=ovbcf3BP;       spf=pass
 (google.com: domain of weboutloock4@gmail.com designates 2607:f8b0:4864:20::b2b
 as permitted sender) smtp.mailfrom=weboutloock4@gmail.com;       dmarc=pass
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

Can I engage your services?

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAE2_YrD%3D5bo8j9%2Bah-xptEBBV-HEC4%3DGb0SRHf996phiopc3WQ%40mail.gmail.com.
