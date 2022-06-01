Return-Path: <linux-ntb+bncBCIO75MV7YDRBTHW32KAMGQE5WESZBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E2C53AD31
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Jun 2022 21:17:33 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id 5-20020a4a0105000000b0040e7d541ba1sf1430297oor.13
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Jun 2022 12:17:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1654111052; cv=pass;
        d=google.com; s=arc-20160816;
        b=dVprbWehOjbuq4YgqBFojlWAxlSszaaNOP2pASFLOSdvWs9BrtJ/whbJQT42SfSIjn
         rZbG4enijCxd81/8tORJVVA6bYdH0w5HVT2H6jp2huUtlqmB0YvgV7BWHuaUdonSbndn
         Gt97DXZ7szxcrDgMSbdQl8LNJgcwkOZoRRyJrEpinC4f6+7iPicv0nVxx/RLbBw5a6Ty
         J8BzwsAMlwX+fHgVaUHMY7LXNXhKnSRVuj2z7OXAifwHvzLHUHz82LVKSem81Tba8slx
         L64fgXT0YSAYIwL7zMDbXiRQQUtIZmzPY/t+7KcJI3rVbeG2gNOMHxUjFpGafYWTqyYy
         q/pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=k+RVMySMXb2ji9zC7J79cZq50Xm4RB9PuXMhUD+NsAE=;
        b=lCxNa2+TaqpGkVEq+h4MgLBkkvyyTOzQ2InlY53807LiC1PIJnIIx2no0cTHRo+dEH
         /3PLw/0WP+NcvMJSSUmMk8HBisArN3l/ucNqnNvYdSOIk3Du7xuiDmoDSQ02aN7+abkt
         SoEzoMJYelvl0hVpsXtoooUI1azqxHZ49FuNRh7RNupc15B08lyLB7gPWg6QxSekZz20
         UbONqRMq+HM0cwm7l5rm5YGJ6rb3evNQgewnNeQLkVR0N/yhvx6N6Dir9ku1habKlCG6
         xxjnhErA8GQnorYrxNyOaIGEDFtTBDgEmHYFVQ91Z2X3d7Ypq9obQuvIaxSuTR/891b0
         dA5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HLFKV03I;
       spf=pass (google.com: domain of alicejohnson8974@gmail.com designates 2001:4860:4864:20::31 as permitted sender) smtp.mailfrom=alicejohnson8974@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+RVMySMXb2ji9zC7J79cZq50Xm4RB9PuXMhUD+NsAE=;
        b=QB2oMikbvsrDz0EDPI3lJLiK8z7OR1OYGK8eRKE8SpBswckfVC2MiWRyGAQlKmzCqo
         m0DeF1O3udVM8RTD3b5rYGWYtSzlcz7qIPKap875D02Ae00c8GsLPbhU7oJ2SdUxLc71
         DA5u2hCp6ILFno1GhTPLDtK54a1xBfjO8ElTxyikLiVfpPp9csAWWdtEfEXWRBLbOSS2
         JtMepJWRo8ybGgfAyRA7/nrq5N6bFgdDUy0K2zVXD4tLl0PfPHq5WwkMYc8333KwuM7Z
         iuB5aLSAB99oe4qe49WYM3CB7G9fUQ5/6sRq4MYZ/gfBCVpf6Spwa9O3X7CWoO9RiofU
         KBMA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+RVMySMXb2ji9zC7J79cZq50Xm4RB9PuXMhUD+NsAE=;
        b=LAKB6IO2zTyhDwVGfetIGAoXdBix30sF0RZe2jhmXj2rXXv8bJtMnTZBBJJnhUtd1T
         kwJqVYu6BC8fnPRt1EMkcqEa5M96gLstEe/6W7FYC+OgEyt3nkj0Vzjhj/r4T5DqPHke
         2g3qEfoML48t3rqsI26mNPaDa3o1JRk0N8OUqt/53qZ4sp22q1eWUjZ7Q+oUfPVnJyRi
         5T1F8AKDJVHrAgaA7s7A6bcgi0oOqx7gUKnBaDShe3z+3GfnXun4GcI8Gfwgh+A6K8cH
         xcgQi0G9qRhub77BO/XuCpEJz+U6C0AUVRO+xv24zL/WnhM+/YnL899NRMmpOrKXYHP/
         DeUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+RVMySMXb2ji9zC7J79cZq50Xm4RB9PuXMhUD+NsAE=;
        b=6mhJCnZBu2IhCBqdKlH9sKYg1KtA727qidudN4O1VtjYVTApkLdvSycZ4ecBZ57jPe
         l48uF8JUJgGvcWYZwr3EYWbP7F3rE8ms5+LBbb+83XY6dLRcfQbzZtWTl8ydeC5KPd3o
         QieWrqLngFddXY+suJ9KOcDPjhEwu7sH8bDOawioC+jo+zU1emXvSt7Kyy5bslhdYD/H
         lznqYDAs/x4cuyHfxvhFXyyrPMaU7rtGUpFW9k9yQl4+I3f/XAZ4OBbCl7KlUanMUwdn
         HNcqdSKlTbIsPc48aSXmr59+WXhg/8Swwenum1CNXB3MqeLgU4ZRqcVQEic1WkovwuD0
         u1+A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531xNt8YmfejJRcuE6zhxHqtQrFSQBtolQO8pjwglwJ275FPoalt
	0bV8sAoZUORS8q0HK4yyn5o=
X-Google-Smtp-Source: ABdhPJyUYH4QY+PJtZzlxwUw9hAqG9QP6qg63hL2jRJsZP9SqkAuCZQ3XW8NykkkR/wpi+AyNsS2Fg==
X-Received: by 2002:a05:6871:14d:b0:f5:f1ee:242e with SMTP id z13-20020a056871014d00b000f5f1ee242emr629779oab.71.1654111052145;
        Wed, 01 Jun 2022 12:17:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:1703:b0:322:76c2:8923 with SMTP id
 bc3-20020a056808170300b0032276c28923ls1704317oib.9.gmail; Wed, 01 Jun 2022
 12:17:31 -0700 (PDT)
X-Received: by 2002:a05:6808:1981:b0:32b:9fc:6f9e with SMTP id bj1-20020a056808198100b0032b09fc6f9emr593847oib.111.1654111051728;
        Wed, 01 Jun 2022 12:17:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1654111051; cv=none;
        d=google.com; s=arc-20160816;
        b=veI0ReIlr1uuBBuQN63ZnnYbpK5Nv5VBhqlikoPsb73DH3vRi1BKyynSlFsjSNVfe2
         vxUn7dncoltN1/v6jfvRrqkw9eytsf2mQMl94avjopzZEWnOvedQ8+8FzhwyuOG6+cJ4
         SZzJfYwrLzfhxdDnQ8hbbUl5YeDhQRtMLmC8CtMoU/gYV4QW0izHjgjPeJhP/m5pnEVa
         HHZkcrkBXnQW0+qCX4ZEyAIpEXKGLEmJ5i3DyjaZsVxrouBr74hZYbYkY41pp54OUGMW
         TcB5XMIAmhqJ4Oq+Sf8o2rdLPYYy3Sm4MEq1qSz+fPcg32Xk0CPIorR/TkYUXWWhQyLl
         YFAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=Gk4nfCem3ECRa7Gml0J0mN/3RZoOAdfGaQAqyHPKtiI=;
        b=fP7unTjFYyEv1s26x2tHMCXyMthHOjEcfHo/E/nu+2X9UVqZoWpZs2VZJeknk/X6Eq
         Zdj6cAeN6ulhLIjcq+o2cWl7OM3tLowF23WEYJCJmmlVkUBpkeVegTMzGm85tbsdJLqm
         C8mXw/Tq0zlrsPUO3dRbEKJjR1iwaNICDLOCHPhBDn4uWz9Icd5f6Q05VnpxsTJ5Z/aH
         DsRuF5J8w08/IS4t1tfnfKgZmlu9ZSfUurvUSfM0TV4qUllqkhWIgSX4zL8LwRfnFMkq
         nfc4j2Ce29DVmiPC7CQ/O0XhUeNLhhwamdn4+wzJy/ZgQgx5QQpOlS7yu5uza4sxpi/b
         0IuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=HLFKV03I;
       spf=pass (google.com: domain of alicejohnson8974@gmail.com designates 2001:4860:4864:20::31 as permitted sender) smtp.mailfrom=alicejohnson8974@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com. [2001:4860:4864:20::31])
        by gmr-mx.google.com with ESMTPS id ed47-20020a056870b7af00b000f5d73c60c3si347955oab.3.2022.06.01.12.17.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 12:17:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of alicejohnson8974@gmail.com designates 2001:4860:4864:20::31 as permitted sender) client-ip=2001:4860:4864:20::31;
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-f2bb84f9edso3959825fac.10
        for <linux-ntb@googlegroups.com>; Wed, 01 Jun 2022 12:17:31 -0700 (PDT)
X-Received: by 2002:a05:6870:308:b0:f1:ddfe:8ac5 with SMTP id
 m8-20020a056870030800b000f1ddfe8ac5mr16670934oaf.237.1654111051378; Wed, 01
 Jun 2022 12:17:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6358:3601:b0:a3:2139:251d with HTTP; Wed, 1 Jun 2022
 12:17:30 -0700 (PDT)
Reply-To: johnwinery@online.ee
From: johnwinery <alicejohnson8974@gmail.com>
Date: Wed, 1 Jun 2022 12:17:30 -0700
Message-ID: <CAFqHCSSUC0MpbjYK8d-GCxOG4b6Qbk2uH3+xQDZte6cPBsxLGA@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alicejohnson8974@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=HLFKV03I;       spf=pass
 (google.com: domain of alicejohnson8974@gmail.com designates
 2001:4860:4864:20::31 as permitted sender) smtp.mailfrom=alicejohnson8974@gmail.com;
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

Greeting ,I had written an earlier mail to you but without response

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAFqHCSSUC0MpbjYK8d-GCxOG4b6Qbk2uH3%2BxQDZte6cPBsxLGA%40mail.gmail.com.
