Return-Path: <linux-ntb+bncBCHK3VHCYUIBBYOK5PYQKGQEP55X2DA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7EF1534B0
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:14 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id h87sf1829026ild.11
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918113; cv=pass;
        d=google.com; s=arc-20160816;
        b=nGln5T9alSE13zRwv6az0ci2nDpOVSOHynTaz5jAkZkOIANBrp+SPoNM0MBL8uEzg7
         v/9nMx0Phor8XyhjUNFQecckp/eoAFyxvv3XivOknwHF+TXr1cAbYUI7uvfLyMgQmuBi
         CQV1dfpNbCfOTUD3v+WM+gZHOvNBpAyhTES35VuyYZjo+hpcf5ZRIY4ZfYCZCSuHOYtl
         KNytMJ4i+yTyUsJ0bzchKiYMyV3jrqpS8sf1/niKkW5hiqJCrmjo85tj2jZJFZdtFDlc
         +cs4OlV+3uvSvYzm8H8g1a6/F49mZGubjpNRQJ+N542pE2YYxje9rtKImFIOeFB/LbAI
         ZdCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=Mg14HFOebMTltUG9BiO7sQ+xGFXLCK6wBem/i1oa+Zo=;
        b=g+z1YdxAb9fkRmZd0rvkn41NgFIelJTlIByDU8oE767cJhSSz2puh4BDGDtdHIsEzy
         Bkd5KSrpin/wQt/E540FDsVXevrLPIDhxsRVOeSx25soSD3Gixq6/U/TCjQvN/MDZxzz
         dyToZxsh0IvbybHKaBVbNkP3roXU9/LOcT6IiRk+hP5ZLJIpk/oqo7d1jg9KG0eJ6jUD
         UNli9SalTCIQRQ0EPFhTjD+eALkHcQzBx9IWruB0o9ubEQoZ59wlws/CJpKod/qgg3wi
         nkL+/h40j1v9PwFaQTLgKMGS9GIwQRlogMKb4Iv0ewoUsj2jA23xPs65wOphbdEjQx0j
         hgEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jc0FOqid;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mg14HFOebMTltUG9BiO7sQ+xGFXLCK6wBem/i1oa+Zo=;
        b=eByDwAE7mqlLFz0gngQNf87nrD+rZ+3Doi+hafIiWltiuxndbrUkMZGLCrurXoLNRY
         a68IIKpGW4UUrp4IUkm373UfZZyHrNaQzRVqBJzYqUOndCdKVEefw+G0QuNlTcZfh3Iu
         D7LEb/KfhKqWfCOeea5vUB1R9II2wuodDqpjnXKF3D7RwZio1hSzahpkXx09JsoDqugR
         mE/u9Td1WnGx7/lEbVmL88C4UyacoMDLI1467C7+kcAWfIOCfRpvEOLkIUlO8Yp7mmGc
         rrtr7QOp1oAn1Ub+SjfkbEEqeiMumyYVrEGGaxGwCFfofXf+wU4Po8SDo7vPP0zulZbp
         7JOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mg14HFOebMTltUG9BiO7sQ+xGFXLCK6wBem/i1oa+Zo=;
        b=p5Csk6d7s2UU4c6tRIDsUa+/A7504nvrpMl3IU+86Vo/NfjWCT1fkRKhhV/AJ7rxaI
         35oCNXU8JsES3fE9v/LNd6AoarJiwLuFt8Hzo5NYAA1YnRdyjGNWBDgAXRVE2QouchXy
         4Vql+4i4GfPdx/Z+h2T4R3ud2qKVixb2eJ29+8DsTs05VdX2IDNf3nkFb+snDJxSC5Vy
         Nu4o7EPQO6mu/o4kfmRJuKanYh8mlFiAB/BKAloafqIyyJpU3QkOFfqpWrPO3QJ+8KU8
         DTk5Q0tZhxc12TeEqgUegjpRtovxiK7UIz1TBQsInI0vwS0sXViqS2n8YG7KzwpCWLIy
         MyuA==
X-Gm-Message-State: APjAAAWSK8XZCJ19GCmaJllc9v9nJl50x2zVCORyCwjmf8PpZDsm/vSc
	s5jug2Esbq7peGBCs635gw0=
X-Google-Smtp-Source: APXvYqzgdzqOPNVBq2WICWyqfAeOxp9i6PjaFjpUxZqivDuCV8XIPQ6nEqR26gkQs0uCVoGy/fw+sg==
X-Received: by 2002:a02:94a2:: with SMTP id x31mr29751673jah.22.1580918113221;
        Wed, 05 Feb 2020 07:55:13 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:aad5:: with SMTP id p82ls682862ill.9.gmail; Wed, 05 Feb
 2020 07:55:12 -0800 (PST)
X-Received: by 2002:a92:5c8a:: with SMTP id d10mr28082613ilg.137.1580918112867;
        Wed, 05 Feb 2020 07:55:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918112; cv=none;
        d=google.com; s=arc-20160816;
        b=ovb0YLDR0I//OGoNsCsuwI82NmF2ug+Cv7ZXNDfpyqQKSY07z0M8z9TH598qri+Zqn
         V0uOJStPgv3terYud9zEfjb428bi2De7+1l6hgZEMDRWio/BI35UpPdQ7hurO6wYaYmN
         hJOGnVXmJbSbBg4ZplOuKDgc2eQt1cE2XLqJ08+iJHWOSdto5cTsgf65B9y6GMRoUwz0
         fYaG0TP9B3ASJI1XJuBHZ2d6USUtBOqZI4TPIjInvvMjAgpX+UhASzrwH4VuWY19+/g5
         zf7+VASQrpVF+yuBq+j5KErBNSYGGDcxhK16EddriXHqurskF6BsDbVK2rFsVeDLO3c9
         ko0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=JUnWYUYj9WgMqnGKXdAvUINkhyodp4ZrOWa+ysolFos=;
        b=fFKpmmAiTg4GRWizLRXu/3ONKql9WOKw9mFWT/JTHDGy/FDX0H3wX6j6kdAsFVKSPi
         fbf+PRYqfJF6RMFfZ9nstGlkpBldCOzCDM8Jlw2QiazHoLnXsXr46TAQi8Abpyb8MVY/
         AKvjl4aRw93P9JZueAv82MuY7l+ddGebF1+Yl/wVsoCyMtFN7SGVz+8n36GQQ3A8rt6/
         eucgRm5Fxe6ZJuJ26f3CWpnWuVjWHPOIfODQOfs4FAqVq1DGkJOv5qzBTzyKRAZ4BSpw
         toz8W/lxBRIc5xUN4SgTEWQvpQuLAvboMXg53XQAIOD3zVZbPlOq+vkYUoeds8VTQs43
         8j/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jc0FOqid;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z20si8223ill.5.2020.02.05.07.55.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:12 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id s1so1404141pfh.10
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:12 -0800 (PST)
X-Received: by 2002:a62:5547:: with SMTP id j68mr38413261pfb.6.1580918112263;
        Wed, 05 Feb 2020 07:55:12 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:11 -0800 (PST)
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
Subject: [PATCH 08/15] NTB: handle link down event correctly
Date: Wed,  5 Feb 2020 21:24:25 +0530
Message-Id: <bff304461627e0d4b748973066b7f2d3c62b0b65.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Jc0FOqid;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442
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

Link-Up and Link-Down are mutually exclusive events.
So when we receive a Link-Down event, we should also
clear the bitmask for Link-Up event in peer_sta.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index e964442ae2c3..d933a1dffdc6 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -551,8 +551,12 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 		dev_info(dev, "Flush is done.\n");
 		break;
 	case AMD_PEER_RESET_EVENT:
-		ndev->peer_sta |= AMD_PEER_RESET_EVENT;
-		amd_ack_smu(ndev, AMD_PEER_RESET_EVENT);
+	case AMD_LINK_DOWN_EVENT:
+		ndev->peer_sta |= status;
+		if (status == AMD_LINK_DOWN_EVENT)
+			ndev->peer_sta &= ~AMD_LINK_UP_EVENT;
+
+		amd_ack_smu(ndev, status);
 
 		/* link down first */
 		ntb_link_event(&ndev->ntb);
@@ -563,7 +567,6 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 	case AMD_PEER_D3_EVENT:
 	case AMD_PEER_PMETO_EVENT:
 	case AMD_LINK_UP_EVENT:
-	case AMD_LINK_DOWN_EVENT:
 		ndev->peer_sta |= status;
 		amd_ack_smu(ndev, status);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/bff304461627e0d4b748973066b7f2d3c62b0b65.1580914232.git.arindam.nath%40amd.com.
