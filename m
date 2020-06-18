Return-Path: <linux-ntb+bncBDTZTRGMXIFBBK4DVP3QKGQEO2O5RSQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC471FDCBA
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:48 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id a20sf1448163uao.19
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443307; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbRs+6vUeTJMW0e3SOMD9GYBi2xD22J3B5Tz1EhHM7Y6iXiDok2o05aHRZvE7iD5CX
         YruK+NVCjaqPySS17nDwZAhpZItYvLZA8F/u10nL9ZtUyGnSz7PgonC3uTQnMsbBntvf
         C3BH+5c01ZHjoxU6hxRL2GhnvKSn8eGXDD2ZxAUAwakKiEidTho5oiFIJF22O7uujP7w
         PRDTBasJJ4Rvkq3JTiSzAvu4j1XHQh7cW5gBnItbo3MiBiSl14hTqRazRULapVN9yUvf
         19Za2nImD0wso0STBYYePvo4eq19cQgZoJxGBJD8dWnWoertZEMrRfBJbvCaLj8bJOEw
         jqJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IFyxhQ3WilntSz1CgQMfn+0wyzkyVxtcQ3qv3cGucFE=;
        b=nkVP6HFLCDqfaTCoQj1ujcDrBuGWQ+j6NlIvAWGQE8SJie8K4CHoyeGgUk72aY397U
         wTczPQV3LFZ5L/zGuJHFirW9Lp9N+rdQN0kDB9ull6SqG/GptttuFiGCHsW28drZ7uEU
         R4kRIYAKhHWrUuJ9BBlwyb+7HLR/efQsaNpAczBdREfyp8IRYYfIJZqctHBruYaAqeRj
         zkle3Gv/yQDG6mbBgOtSdv+VTUct6We2s9vsoxvAu+mVRsLaS+SFC+iZYJOUk8gt010B
         dnKkGTBLDdkfYy40O8501bq4krUFPcr0Fn1YiRHwb4M7UyYVPg2u/QK+JA3HtSzvpmxD
         jDjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=k4jWxLmQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IFyxhQ3WilntSz1CgQMfn+0wyzkyVxtcQ3qv3cGucFE=;
        b=G5z3sVebQc2fhYoBDIKuZJfqQ7djEhX9kfydyy35p6ZBC6fT1z3cwhQcwwzUROxI1o
         cs10zGq12rdwQGhInD+lRH6LR9YbmB87Li3fdPbXB0mDQiR4cGs6QDJ4Pd4+ri/auqFt
         BB6lyEJQdeE+FLNdARCCi1xCo4O7Q76fsx455SOhHmo26ogPK24a45Ue43yPGvgOExFG
         wxiFcakJXFMQJi+E7zLfsEnCZrD2o2iL1KyEkNiKr6ZxY50cVEoXIPwFrMDAmcD2nRDR
         AZj8d+RiKtID/Hji9QW16mh+03ng8zTRFPCuWA1smG5rRyAxi+U2wDPWGM/vhqOW8C1m
         Vc6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IFyxhQ3WilntSz1CgQMfn+0wyzkyVxtcQ3qv3cGucFE=;
        b=P2MHu+wyYYtRqe4HGGRHi0hMukRZ+7NFZ+HxZaCX1g1dBNtiLNkssOdbMswr6Xbx1S
         C2ewdmHW+Ere2MEpALLkPRgu1bhrYfOWm//oW1YJkqwg+5JhQzlsc9NdnI1XYE9PCbYW
         Wnval7UJ92kc6venxTyUuVlEBHsyywYkdGCDVl78IzNLvUmZ8F1EIe8IW1vFEEhQNZVt
         luxf6hnmxhLCDLGEf/fbRYxa7t/D7D745Pv89TgvAr+Rr0bPwm2M8jkUa+KBnrwgSbsh
         ZMNMpKzMa2+3jcDpdT+fspgIfs6JCzmcgC49K9lccDi3StuBkX23ulpXjXMNoTfY3He1
         a7WQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530DmS8bMTbxiXhmx7O5LdmIdbUdIAXfIxCZ47AE+k/CLQV6KnAP
	4rY8xcdrnB/1kGJ0Apr4NtE=
X-Google-Smtp-Source: ABdhPJwnB6WiyNGmXw8iZUApnj073DHMIQNXjlK1kasYcFK+AnnNRcSEjqRR+lhtikCIs02Iyo1NWQ==
X-Received: by 2002:a9f:2581:: with SMTP id 1mr1414210uaf.18.1592443307351;
        Wed, 17 Jun 2020 18:21:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f993:: with SMTP id b19ls528189vsq.5.gmail; Wed, 17 Jun
 2020 18:21:47 -0700 (PDT)
X-Received: by 2002:a67:1703:: with SMTP id 3mr1702447vsx.169.1592443307075;
        Wed, 17 Jun 2020 18:21:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443307; cv=none;
        d=google.com; s=arc-20160816;
        b=BLuApiooU1A0/wSw3jQSWkbgmgBGPwmlsLHmFjs7TKmkxm1hjGJr3ygwtBi1FEcWnf
         8p6sSX9x+4jfMSU3tB9SjCWBxFgSIZiTVCXw+avEIz+663wY8VaLzT9cZxGptTEcChbp
         BgBkQZL8r/WqstMdpB27fAXo4DK8EJczKwkJNHorqjeDejwPySnoVDy3Nmmng30Tsg0u
         5ICT7S4iLFkmF7ALB0pPK6UyKEm3y1hyF0mSQFOANT+RE1Uuy+JzXF2TCj6NNFWPIWqd
         HvO/gILfLl4LdytmxAxhKrCYNAkJBz9zViFpnKJNiA0nOmwonwz5Az/yB5aC+OEqADqj
         5sow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xQcrMcnkarMx9RUd6mTr0dNMUm6dOUJAqeY1Q0BY3J0=;
        b=A0CYPZMRA4bczRDkUJEH9sR1uj0w91MBTXVxMorLi6Gosh80Cxz7JBtnuWylMoffmG
         8OKHanKjeS2rXCEQdzMFtGnXfKtlH84loF06k71sw+LpWDgnusCy/QZT64iMV8GV/6F2
         H9YPV5xbpPCX8seDzY5ipfL7fJmtnQwHJiXBSi3cw35SbG/Rl112fGe0neDvRO9yWiJH
         yHm8qfYM3x44nhyOn4iqYIiFMVn12zdEeS8Ff4pNmflX4l0cIwcRv7xzVzBHe59Clem4
         XD8CHUpj2LP/Aj6ZqSt2kIk6GFQKhXV4KF01k2bxr6vNvPrcEFlxOnn1FkVnXvNeSQ+x
         bNVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=k4jWxLmQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t24si95878uaq.0.2020.06.17.18.21.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 654E820FC3;
	Thu, 18 Jun 2020 01:21:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com,
	linux-kselftest@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 244/266] NTB: ntb_test: Fix bug when counting remote files
Date: Wed, 17 Jun 2020 21:16:09 -0400
Message-Id: <20200618011631.604574-244-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=k4jWxLmQ;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit 2130c0ba69d69bb21f5c52787f2587db00d13d8a ]

When remote files are counted in get_files_count, without using SSH,
the code returns 0 because there is a colon prepended to $LOC. $VPATH
should have been used instead of $LOC.

Fixes: 06bd0407d06c ("NTB: ntb_test: Update ntb_tool Scratchpad tests")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 tools/testing/selftests/ntb/ntb_test.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/testing/selftests/ntb/ntb_test.sh b/tools/testing/selftests/ntb/ntb_test.sh
index 9c60337317c6..020137b61407 100755
--- a/tools/testing/selftests/ntb/ntb_test.sh
+++ b/tools/testing/selftests/ntb/ntb_test.sh
@@ -241,7 +241,7 @@ function get_files_count()
 	split_remote $LOC
 
 	if [[ "$REMOTE" == "" ]]; then
-		echo $(ls -1 "$LOC"/${NAME}* 2>/dev/null | wc -l)
+		echo $(ls -1 "$VPATH"/${NAME}* 2>/dev/null | wc -l)
 	else
 		echo $(ssh "$REMOTE" "ls -1 \"$VPATH\"/${NAME}* | \
 		       wc -l" 2> /dev/null)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-244-sashal%40kernel.org.
