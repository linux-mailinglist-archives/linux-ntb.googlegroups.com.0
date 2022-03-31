Return-Path: <linux-ntb+bncBCFMFUMV7UORBXE2S2JAMGQEA2Y4MYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9504ED848
	for <lists+linux-ntb@lfdr.de>; Thu, 31 Mar 2022 13:15:42 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id m3-20020a056e02158300b002b6e3d1f97csf13104298ilu.19
        for <lists+linux-ntb@lfdr.de>; Thu, 31 Mar 2022 04:15:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648725341; cv=pass;
        d=google.com; s=arc-20160816;
        b=mxtqkDRPyfPGDdJwUqureVC45eu3z+pc7PksApv+bjPM2G0zxglKFp1DKaHmG5fjhX
         RAw+JHhiXS6VGq6zKq82OK4SWlYK+II7xqCUZTacLz0sgvBBw1ve52rpP0vpDV6DEtSn
         oWInfcbt+I2DTHHvjvk7keyu0EqxWR4HfhClWbeLZd3Cnn5LZTWPY3EmsFZLB1Y0kvcV
         rZSM77MZwXQjDZMHmjd4mhmeQWaaBJ7abrEfbtDQVqIn5wAo1rKBkOfcTbJNIFcGfDol
         X96xnyoTChQzk0+axpZHJZm5XxAKQ4OR3iu2rqOHHFut+nJbUbs90y/9MQdltX09baoh
         jWZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=bFtT5e5ZztQlCaDMQPrMkOZ0dEeEzHC3hFUDdOEzEh8=;
        b=EOny2v0DqjEwiE7PseNl2UlzHFMH3Cr+AMQ1Dlts5897mm6VFuoHWFljj+Wi4AmLAV
         Ew6Yha6D192zjVqt28QDQ+DLlxOaTquIhhkBpxY0y4JcKJsEpOSKnxDK04WCBM0u4vO6
         l0Orm46qkpKmNEkVoQyKWIAh2M/mA1c+K4RAUbJz5U4NdWZN9zIWiFsNjCDh/Aq8YFan
         B5LXqE4T+k8gXorDL0FL4/1/1pHGGUEYv0M3/DXCzeuc+0Jt2/msia+/eisPN81iXlAb
         xy/gTJ3nv168TVaT+NevZzrDHGOiAdTOLpN/QCU9RdHDPLLQn+SVR1NtHWQO8sV/LPOZ
         80gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FpvuwpV3;
       spf=pass (google.com: domain of kpandjakokou@gmail.com designates 2607:f8b0:4864:20::1134 as permitted sender) smtp.mailfrom=kpandjakokou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bFtT5e5ZztQlCaDMQPrMkOZ0dEeEzHC3hFUDdOEzEh8=;
        b=SoFKM5AhEp7qOowLuScUNxMZlOQaon0NMu5i5sTiHwxs1KMAneJDhaKdJaGp/mKD0i
         Wrw6xqtKL1OTra3qoPJIggOX2m+s+XveaxDIvx7tC6OGQucg6FAPw4JvYine7fFqm/cB
         VYvI5NplLIjBWnNd09Yjr/Sq/2SomxRq4/BWEMlTLfsJGU0r5AzjzBng1+alNcmX85mx
         UOqXmL80JrIIod/adcNUMU44dUldih4EEdhgjp0XbT/b1x8lIqmPERjAFIP2mRWLH+3T
         YRGwNCIybHpa1uwmqJW5qLb5t5LBnBkWs2KOkkMNP/9rDLOx9URI8umdI9lVKVU3sVcA
         B2sA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bFtT5e5ZztQlCaDMQPrMkOZ0dEeEzHC3hFUDdOEzEh8=;
        b=kAmZF9M20QNr2uaTqmdV9/C4Jw1sMBMdhH6l9ogUENocFlK//MzcntfyMqoVVIM7rD
         l8ISwj+SBhinYII/VZuUlkycTEWEFiOrvFyrzlzT68NnhIBRPkw6bgPQpxjHX3NpOE94
         Zp/RxKdmoNW5/avkBC54CdyA8kWugLjTJxHN6Bc5tKdPOb6EiK942x+G8Cikuk1eDq7n
         pyB4vYs4Y/CLffaq+Smo+W89z0vbSOGraCZ3FD2hb8Cmnl2CzXRZvnS9ADHKyUN9eg5c
         eONIQGRwmbOtzs8OnlpDWedWWY5lGHV3Ppfso0VC4PPidiUMQD/o16EnqHwUVhilFMiF
         AskA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bFtT5e5ZztQlCaDMQPrMkOZ0dEeEzHC3hFUDdOEzEh8=;
        b=nID6cfThi6EFbmtb3baxNKzrWPR97bN3zQhHZT9BbqStkopbM5xxGrlq8heOSl+SIz
         ro4ZtYaHWQKJP3k54rAUs8orF7TIBaI0sMdTz+CpCdyCSxfkxwHwW0YPXAEvTI8+1Asf
         1oPkcG/k5BYi27ZcNvpiOeA8mkt24YaH5jXuXoLdZsNDwibraqSXfoIcv5mAsnGOig1i
         PE2fQP+MWvf0SBTkUJ9NFE3mkgmpdM/CqzhGkBkOuIk9wSrj+4ML2Tw1KHjr+aT5wIsD
         P8WgZOrHnSjoD4DIuhakL3iU4hDu2mxFCElER9Q27+K1CgBFhHVQ1k/HDU2akRIA7j9i
         0+mw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531F4NcnUwdmLMbXdS3oUeEQ7JYy1VSWiyDvL10sfy/++lpD+QX5
	beo2H6gxU1OZN5XKrdnQljg=
X-Google-Smtp-Source: ABdhPJzaiS+fUNhW5KeU/WZz+tSdTIJjCEi8Q+NW72+ixQF5/XEmtFvX6ci1kcTvZQNakVhX0aBm9A==
X-Received: by 2002:a05:6638:1356:b0:323:aa22:8cc9 with SMTP id u22-20020a056638135600b00323aa228cc9mr1140455jad.72.1648725340825;
        Thu, 31 Mar 2022 04:15:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:1605:b0:31a:7cbb:4918 with SMTP id
 x5-20020a056638160500b0031a7cbb4918ls1118549jas.4.gmail; Thu, 31 Mar 2022
 04:15:40 -0700 (PDT)
X-Received: by 2002:a05:6638:1388:b0:323:78d7:4061 with SMTP id w8-20020a056638138800b0032378d74061mr2716290jad.152.1648725340436;
        Thu, 31 Mar 2022 04:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648725340; cv=none;
        d=google.com; s=arc-20160816;
        b=RiegL6CeBoMec57dqLsxfuSbgqaKbBHVHYhf5aPeG1HBY7GLOI3fCNNwa5l1cra5q5
         EC+wrphPKCFGzP9l8CCCpo49xlL4Mwjaf719VTW6a6Imsr0NjFhWK//o23gYa0yzBYhY
         kK2OUOmGvTWdMjgJYQPLeVHZKQMu8Ar4Hx4bIm7gwo6sdgIcUGx5+fq5d/rurSYEwS/8
         qdNVQHkHFCEt5/dYH74oVxrQqYsEnV6sgO3XHehrSAniyk/F3H3nW8913R9u3asVZ7fA
         A2/dursjwXvvqolq7tKENVeMgTI3Vye25jd9FXW0qpclWLrwl8sKCi0aW/TxNO41BobZ
         uN1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=HZOcYmoVC3rFcQPUf1pzNCo0/GeIxj+bdNM5w1ktroY=;
        b=TRWHYvmBogRKgEhg1i/eLYEpEMEJv7XTZKzbzcaZDFJvwpZPaKOOeaDX7mw3e80dUy
         HCA5Fy9xuMN7L+z+sFk9BXvD3Y7sA43mQyuNFwmmS9EuXJuWrdtkKtXCxPELO1qHG0LL
         CYSLbjzKq4W9MJlLm4bx2E1jk5cE+b3w4VHCGEPifWpNrrkj8Jq0q9YR+A48y4nokBMY
         luvBYLHD9/+af7kqCiHy0FIJYcxjoOAx2kZEe3DQ+7On25GHvrB8DL0pF72D2c0eesh3
         K5KtaOqQBPEaD8roP0ZetWYP8yFeZI5Wt70GZ02/U8AkCq3LtlGSaYgB5QaUemHMph/v
         frsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=FpvuwpV3;
       spf=pass (google.com: domain of kpandjakokou@gmail.com designates 2607:f8b0:4864:20::1134 as permitted sender) smtp.mailfrom=kpandjakokou@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com. [2607:f8b0:4864:20::1134])
        by gmr-mx.google.com with ESMTPS id q4-20020a92c004000000b002c9ae6581afsi104526ild.2.2022.03.31.04.15.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Mar 2022 04:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpandjakokou@gmail.com designates 2607:f8b0:4864:20::1134 as permitted sender) client-ip=2607:f8b0:4864:20::1134;
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-2e5757b57caso250280787b3.4
        for <linux-ntb@googlegroups.com>; Thu, 31 Mar 2022 04:15:40 -0700 (PDT)
X-Received: by 2002:a0d:c0c7:0:b0:2e5:bf19:2698 with SMTP id
 b190-20020a0dc0c7000000b002e5bf192698mr4459457ywd.119.1648725339944; Thu, 31
 Mar 2022 04:15:39 -0700 (PDT)
MIME-Version: 1.0
From: Katie Higgins <higginsn769@gmail.com>
Date: Thu, 31 Mar 2022 04:15:29 -0700
Message-ID: <CAJbPw0otZYmKT+xrgF7nBm1B7X8cLdw-_UpoDq3wsi85Ok+-_A@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000383cc005db81c894"
X-Original-Sender: higginsn769@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=FpvuwpV3;       spf=pass
 (google.com: domain of kpandjakokou@gmail.com designates 2607:f8b0:4864:20::1134
 as permitted sender) smtp.mailfrom=kpandjakokou@gmail.com;       dmarc=pass
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

--000000000000383cc005db81c894
Content-Type: text/plain; charset="UTF-8"

goede dag, kan ik je spreken?

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJbPw0otZYmKT%2BxrgF7nBm1B7X8cLdw-_UpoDq3wsi85Ok%2B-_A%40mail.gmail.com.

--000000000000383cc005db81c894
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">goede dag, kan ik je spreken?</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAJbPw0otZYmKT%2BxrgF7nBm1B7X8cLdw-_UpoDq3wsi85Ok%2B-_=
A%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CAJbPw0otZYmKT%2BxrgF7nBm1B7X8cLdw-_UpoDq3wsi85=
Ok%2B-_A%40mail.gmail.com</a>.<br />

--000000000000383cc005db81c894--
