Return-Path: <linux-ntb+bncBDTZTRGMXIFBBQEAVP3QKGQEEDHFWLA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6A61FDBED
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:45 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id k16sf2895338pgg.7
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442944; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0PKpJmHri+2pETm7jm/KMlK+UF/jNIyGrbw/M7L5e960jRFrEutQ2o3j83AmqkhRv
         HUD1FrTeVgoSjCbPV5OfxdLwW9vkRd/PfBTRckVGh8hWrbavDjIFFJMOBaE5IAXmKtTn
         oq0GZd89nwefSjCKNyvjMiVkxDHr0FTEz2VpIsbtA1310mGcvScmijW3yyw6Au02lb2p
         qeOvHP3ZLehDorIHOp90fyh0AmJKvtE1uzw6s7DwXJ8DfXZmVJGMkGD9HIvSjxbnh4rI
         +TBMv17BELMD4d+vHBjjr5BHI17sw8SFUbiUK5ee7wE9yZTDHypK8M60AGNCIJnMzvlF
         ttmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=l53io6C7ScN/9wiBS6dYjH+KF8PysveAYuozU6helTY=;
        b=zIWsJaE679doDSgo+F7hveV9FQXaxE+/u68KvSij0kZRMI7izkUrA6G/S6fP9iBz3Z
         1fwA+byDyJcHqtu1fNONlL6dvUvWWCLfHdzWCW1WAynFZCjfj7YqybjnvJoVxYGciXvl
         6pJLAwI94uStiN7kHjFiIl8743DN9Aeo0kIz/Uvi1u5YG4h5EabPj/U248k2w/TQT9cH
         w4DIpFhUG73raT19BQRaB0PS9y8BZzKI4qnoUaIlVb8bVBfVqQu46WzmcpE1Yx4PXgb7
         6LtdQtqNRjMJt0wu3WXofYCWkjxj/+egagDTFoAHh++IA57fldiptlYYCxS6gAn0BqC2
         Fhbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UQ34EhzR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l53io6C7ScN/9wiBS6dYjH+KF8PysveAYuozU6helTY=;
        b=BCpjF2Td3Epv66hDOBwPuyq9Vo8uP8rO4otHCSAngbQRE2piQGuo3tqTRFunYTkEjH
         crNf/eICI3c395Opyz04e90BihA7TCkeO6oUgzlezG09xaqJA5H4effskONHJ6tkgodo
         Cv27FAENh69M8kyX4RJ7jxB3NYo9IsDdX4gOQK9Oh4+AU2PiJ7CkuRJXHb2eetA9wBGq
         vKayTp2WSIHX0bCskTYTqKar9Fn++4Bt6bakW8gedAvXMFvIwyHl5fklK/YDWy3Gb+wt
         dirY+A7VeD/EqaiXwDaDiDfNKNjp5S5uQSkB4Y50ZnFennk+59b4TEC3yerisNC7NQCP
         4gsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l53io6C7ScN/9wiBS6dYjH+KF8PysveAYuozU6helTY=;
        b=ny14hwCecUXaa9jBdcmITvXw6iitOA+Yfx/kUYhIYxPJMdE7cC+X2w6zdTiSRavk7C
         7C6k9jpYRpj5fp3/x9QqxzEhIuXwBuSbfsOfNGkPwAKU9yZM8u0qbP0lCUUMA44mEY67
         0JrLlP7D2LOIOGwnDYwFENXczoDCUyyMXAJIenXkwPNgs56Hs2TdXvkJehAmJYY3GaKK
         vB/5EyCf92dvLyEg6F1zoeNr8kAMb5gDiNG8PkqXe+lW76z7E7rOttmihapHTsTExWk7
         fqrt/vjicUalaNFjXFVpobXPeausCUM89Q97PdbmF1UwI94fBPFdJDriKpKp8NlmlnqU
         NUbA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53032FHwWwDeV9NWM+jjllVSxMqxNz3vKq15KrrsRBFZCXimz+WO
	H1p594n9hj8Cj8Iq+r4+biA=
X-Google-Smtp-Source: ABdhPJzZPo2pcUe+l3KgXWnPAkqeWV6+P+w69oljQtOYddwGTp6CHH0tDuNtodPeho/pAdwmpKJVqw==
X-Received: by 2002:a17:90b:108b:: with SMTP id gj11mr1735086pjb.227.1592442944535;
        Wed, 17 Jun 2020 18:15:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:d34b:: with SMTP id l11ls1492827plk.6.gmail; Wed, 17
 Jun 2020 18:15:44 -0700 (PDT)
X-Received: by 2002:a17:902:7802:: with SMTP id p2mr1691824pll.38.1592442944193;
        Wed, 17 Jun 2020 18:15:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442944; cv=none;
        d=google.com; s=arc-20160816;
        b=uItZ6C8XVP71rp/njWD9iBWLd1kIIeHLmM7ucbXZvTKy+C+0pubUgxKAJvBDuJPkVK
         QSd3ED9+8A9i9vTTmyHjOlHphZ40P4rG1UP3cfUm3Bu+pud816KGCjQNcX5r43jHOxQ3
         mxBncTqbrfxsk7ZnbpjZBLAjcyFMscA59/bXJqVBH4KjTm9qVGYzeT6K+aNgaL50azOs
         G+FGKy5+8Qi47xp9hjRbkPtBiunrce3QfETPyGguc5CymJ86lMr25gDTAhyRJRfB/pz7
         U/cOANP2R10xoaTPXs7md6l9VzmYiQ41LT8T6SYOqBHtklyzpVHW3UjKRkZOQXiX9559
         qrXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xQcrMcnkarMx9RUd6mTr0dNMUm6dOUJAqeY1Q0BY3J0=;
        b=Gcv6SyrEOQ7cvR+Kk00jv9CgCGFcBbVsqrnfzm//L7yMVYAAv4m0FIT93mMXcTgUBF
         y94wskqH36tRoFiob6RlClChVYY/kqJWzx5GnIMej7KFXGggUthdOca+rPMS85We6KdR
         bAXjKpWtUGssjbPruMtPudr2uC1P15bBot0/V3fnL8Ri2asXIfHi6OvJX5nGiMYYlmAZ
         +5alRu7QO/BLqgOrIzdAHwJzkp+YjAdMvswFdS/RhLI2+ZxJIKv4PVatol1HtcgDiHul
         w13xon94dAA+9/sQjORc7abEOIj+IVfnO1N7cdcpt2khvhqS7WW7WKdA4iUUIdmZEnBB
         KLwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=UQ34EhzR;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q194si120105pfq.4.2020.06.17.18.15.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 05FA6221FD;
	Thu, 18 Jun 2020 01:15:42 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.7 354/388] NTB: ntb_test: Fix bug when counting remote files
Date: Wed, 17 Jun 2020 21:07:31 -0400
Message-Id: <20200618010805.600873-354-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=UQ34EhzR;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-354-sashal%40kernel.org.
