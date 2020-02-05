Return-Path: <linux-ntb+bncBCHK3VHCYUIBB4GK5PYQKGQENCDUAIY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 659121534C0
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:29 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id d13sf1722129ioo.23
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918128; cv=pass;
        d=google.com; s=arc-20160816;
        b=lkG7+9++3YxyACl37dgfohsHu0ZzXpB/V+OAuI0ssWXhM3hhIlS04RINk+r2m+FcxD
         U2iQu8rRgVOqSQohrayoF9nSL4rW94deabwZtjpsxYa/nO3q0xCCSlfkliMSY+LK39tf
         I9moJtn7VI2BdE2pICpqUmvSpbBQdQiNq39fbNW+4IwL5XgG4UXz+tlt5vqMvRv0q+SN
         asorduJS0dBi4HuoiN4j4a8citgoml0F0bK7s7pYKCqCLr+wrI08H8KcIYQb8yVnTj7e
         BUZKbGowB6PzY8x9GMstezSmRNuop9uaA1lWhWRDm4VvXtm1bGT1kpm1FqTkeneYsMys
         z2ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=2EjlXJ1Xnix6QOaU49Ccj4CtPwyuYJ0Zfw6QoajtWks=;
        b=n+sDcD00Ai9mBlJwPLTaW7PfWcyCy5FNxLxnXYpIbKbdVfSvEj43RmW+YAbyQXQm/x
         +a03R7D2SBTrneGPz9iis0G64gwzQvniagx3Ta0CGngySrRykd1BjUUzT4TyiL1Ljy7w
         NgRvE4nDzdGj5+MdUnmJsV2YpPYzwOkUcgaFk6W1RDnxu51xyni2o73gYqN9RMg4QLQf
         gpIgdWP0LEn98+2l9tl0VTIXvcRNKOYRewDJHb0Z8ogQWneR6ITLQ01z2fxuQzUnaalw
         WzkCS6vyslItfGba9XjB60N+homWf34kW28PgHObbydWF3EEAhujtswwJYqyvXtkHVlw
         7deg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KovrFgSN;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2EjlXJ1Xnix6QOaU49Ccj4CtPwyuYJ0Zfw6QoajtWks=;
        b=K8gzQ2tokGUkNYZT0SmSWyTdGCo0NKgVxq12r3FsNGahBLuMPoa4QXGi6+rfrJk3qN
         TfZkMBa6PQtsqKMrZvLpc9B9VeAvNmx/AIjXm1JIY8nPYvL17B05YXc/DDxU1ZaHTBzm
         dWv1K80aPbvON35XusvdaT2hxK4GNJq2jwKFasHQc8C2WIz3s6SlPMjAJOpxzN2Z1Z2G
         4uPX1k6jhmbsxF4IvJfxDTAn1aRkC1JzU85fnOUFkOMB1gLtl3vuZBRDItAnVF6t78MC
         rD4IBgDHhQtjVQIFSW4mtmH7Iryw6gH72Nx2Ke04R8pn8kP2hB70/E+5HqqHuT1i5bDB
         3RDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2EjlXJ1Xnix6QOaU49Ccj4CtPwyuYJ0Zfw6QoajtWks=;
        b=rNcyEvHdCvQh0U0m1VVUNYLD5ubAYSkQqHAv9IHSMzBYqOOO434gnBlosX1sN7S19M
         hF/9d+QaXIoDJacYTTl3apgi9wTRl/ucBAVxtxudRJZRVsoxhVr8eCzuOGQyRQ8VzBd5
         oLxWkbuoH73yIXQoex/x8h/JM+96QFoeelrRyuVs+j3YsP4iaa9jCd5G/G1L8Hsa3rz6
         Hk0dbdlM9rHiDd33W3eaTqgLNMuaM8gZVyqil+zeteFyizPbsiNf81dleTYzaanFHU9r
         0AZKX3g7Iy+Ov6FYq5ZLoVQd5MDpZGGnhPKUtEbV+qgEUAHpKtiuab0YHqKOi0ix8uEz
         bMVA==
X-Gm-Message-State: APjAAAVSuw6hjaoUEjfEpyySGP60qt/2lqaE9W/orpsFQNiPeVXYy5fV
	tFQ8AD9L9KC1/ZVCnvMo2W0=
X-Google-Smtp-Source: APXvYqxgM0qtrY604Ggsk/7a/TpyPZbHnFV+ZAZVK5t+JYC4wewvOWsU2x1AtwpI1nDG2d4U85kN9w==
X-Received: by 2002:a05:6602:241b:: with SMTP id s27mr29831346ioa.19.1580918128367;
        Wed, 05 Feb 2020 07:55:28 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:7a08:: with SMTP id h8ls530922iom.4.gmail; Wed, 05 Feb
 2020 07:55:28 -0800 (PST)
X-Received: by 2002:a6b:7846:: with SMTP id h6mr29865802iop.224.1580918127949;
        Wed, 05 Feb 2020 07:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918127; cv=none;
        d=google.com; s=arc-20160816;
        b=MB63fL7OhtSZlzp3Md3iHuo2/OhjZPXnExTopsMMmJFthQoyHlNeXrCf6rnsKQBgbi
         KUKmbPO5Gof20MIHb6HUzN227XDJ5p85zRPLkXlrS4WJ/fQUw5PF16Yf08GWPSfKuJlP
         PGr0Snq+ml6SN1kf7wfBNXr4igJKD1IJVbt/6FeXp53t6n1g9dqZ0CX+l8wZ9XHLCMTO
         yvveyL7R8kbrDslVdNW0jvHbXSxh7c7txOYGOkUkHaXstFbaxgq1mwj4tXgPLawNik+T
         uT8YE0+QofugJSY6z7eV8UMBR7s1K9lMW43f3SLB/2j04uC6gKwUrJ/M3MB/Si+LdS2h
         YvsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=5hu692SP05XeWg1iEg/5pM4NUOKOgYoW5YB1MBMx/Sg=;
        b=epFRM9G+7ABGsKxQToPvag6zdO9rGA2kgY44GTPzW7iGaUe+wgOpTtsX1XV0zQP6YC
         22ejytr85WCBvRK+j1O4f7HImaT2ifUmILcMuFPqp6zDzgJqBEHRynfJd/SUnnFpdK61
         n1Bt/iySc/YXd3nuTbxMsGnOTegjAzMONKVi3mNcczF+KpSdpM9oXrO+Kpy9QiIciaZH
         MfSNyvOh+smucgcjieXtBTJMJ1j8W6TMFUB2ieVslmhshkbN4dPxvZfj31lpcQE5fpvd
         Z65hkuGccm+4Bv8pHfkb1ml6aPes3pXXfqVpN5w4/ZFGVZjk6LUyx2bQxhcv3+b8mbOc
         aQcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KovrFgSN;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b16si10234ion.0.2020.02.05.07.55.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id p11so1033897plq.10
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:27 -0800 (PST)
X-Received: by 2002:a17:902:b612:: with SMTP id b18mr33947745pls.318.1580918127370;
        Wed, 05 Feb 2020 07:55:27 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:26 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Jiasen Lin <linjiasen@hygon.cn>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 13/15] NTB: remove redundant setting of DB valid mask
Date: Wed,  5 Feb 2020 21:24:30 +0530
Message-Id: <77ab9d5b86cbf404cd254d50d26e276472014293.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KovrFgSN;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
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

db_valid_mask is set at two places, once within
amd_init_ntb(), and again within amd_init_dev().
Since amd_init_ntb() is actually called from
amd_init_dev(), setting db_valid_mask from
former does not really make sense. So remove it.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 8a9852343de6..04be1482037b 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1056,8 +1056,6 @@ static int amd_init_ntb(struct amd_ntb_dev *ndev)
 		return -EINVAL;
 	}
 
-	ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;
-
 	/* Mask event interrupts */
 	writel(ndev->int_mask, mmio + AMD_INTMASK_OFFSET);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/77ab9d5b86cbf404cd254d50d26e276472014293.1580914232.git.arindam.nath%40amd.com.
