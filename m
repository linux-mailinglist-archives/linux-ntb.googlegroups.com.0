Return-Path: <linux-ntb+bncBCHK3VHCYUIBBXWK5PYQKGQEPY7B3RQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 1833D1534AE
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:11 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id d9sf1194422oij.4
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918110; cv=pass;
        d=google.com; s=arc-20160816;
        b=KIqpQ74Szsoid/JtDHuxQROUog3n1L1yFXaDUqjwNjs2gFeNihoXg7BLPEFbYI8eVs
         DuPU4japa2jVSkM+I2OhZgCZntThfD4lTVegYmiJk/IDqJjoGawxjg9XAk9Y4imYjc6T
         KaA3bMGUXSHi34OF1p0J5bsmfPf+SYB4Dth+hkWrB/yK13oGsyKM2HtQtYWvjpuDI5v5
         8MeFhdkPO0IWB+BRnAjFKjl0m1HQvwsTQZ9CWnIbKWpERGdZopu37VHmfMSfSTpEvadi
         mU+d07pVmoBz8tj3Mu3D6O90WjIP5NnBKwEYujVGyn3dCk1uZhgD9ubpjqbbVdTLI60R
         JbuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=9Kn8xgfJgUuJPqrfvb3a/bs+6LLqri73H5CQIZY/Hoc=;
        b=pN4hRqf7B9+f+p4n0JRaGdgumGJncb+UFzC0JlrasvDZN8n8KKWiEsFf9ksiL/bixP
         IQJPn1SYJXuUwbg4rgIGfHeqkpYjZm47NRvs34hwX5OggW2+u0Pq8EQ2i/I0I8MsIw4B
         1G/eMsm2CDRvoNTA66zkKcUd5MLEjWla+D/NcQ1do8f1GvhftByMlnfgf2B6KYoZlZGq
         K6jEC42R1+r/V7reRO175pCj/TROv1qMSbj/SkfSIHGbQywWDaNyUnaCAiQVsCSen5Le
         MZhi2Do8CjfpkJODpCXjPNYH7X1gfKc6kg8C5No9OKo1WzB6TAoHLnlM64hwLLxIA7PQ
         OM8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZMvfnoQz;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Kn8xgfJgUuJPqrfvb3a/bs+6LLqri73H5CQIZY/Hoc=;
        b=o6DCo+vO4MQEIr96Z5E1y2fA3C0IgTj3V8x6ydhF6YUN6fWGhwiye8NSNwISYmkWH7
         SiiP3ATwjftsnSnwp7ihH89quNfA4pgGL5VFF/A+rBAjN71yAONueQymGa1pBgVFiW8s
         LaVlF5j9flzlyPe3/tYlP3ui9IQe1f9J/OKy73rQYZLwP+W7zoBqjn5nj1EtyFdRoXjL
         wlHCD14O5JcurONL4tODF4ozt8+pTjnL5NaUVZm/Y1JJ8EuLv7D1tsQTm73fJ7WBUxKl
         nEDDTFf0L4/OwebKoVjdMdmd7C8t4MBm32YGlXf/gQBEj9mbPRQbWqLvOKR0jD2HBwIB
         SVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Kn8xgfJgUuJPqrfvb3a/bs+6LLqri73H5CQIZY/Hoc=;
        b=kwb6Y7fOJMrvfHFOKWjomGgxH1reqCFryKMn8HJfhBjswCh7lsc2g3s+qgfJwBt0+X
         bHFSIzP04v8fxcG6MR2tqLr5rFIbcN/l7+EAfCSWMnqiIHaey+vvRcusw4zopDnyU/u5
         lMPZi2DEy1l7IlLp6ApmzQzwNv8hHxqzDFVl7UF9rjQsvYfym30v2VBKTDpoUspNWoYS
         VCVKAC+ACOYGCBGAwwXHG43+5429MXW3Pu6b/nGkG3avCnw2RMh+zbY3RtErhhxxovr9
         eQHxf1zxjDNoqjgosq4jZlRPeg7g9V5ukmb0qeiqCtGzHx5KBciVImVBvNxB22KIpTft
         zjQw==
X-Gm-Message-State: APjAAAX0Ul35KIi7wrNWiGPWOUoASMh6ANcSXMpPNT6pPRrKeCyaaE+J
	M7sMeDualjqHh3w9Vc/XSQ0=
X-Google-Smtp-Source: APXvYqyXIbV3V26aCOwR8UtJzgBLkjnNjLHDrzlfeRe1ABva7zTagCl0daN2Kqi+3qcxYhBOEb/uyw==
X-Received: by 2002:a05:6808:3ae:: with SMTP id n14mr3405835oie.63.1580918110074;
        Wed, 05 Feb 2020 07:55:10 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:895:: with SMTP id 143ls689511oii.1.gmail; Wed, 05 Feb
 2020 07:55:09 -0800 (PST)
X-Received: by 2002:a05:6808:aac:: with SMTP id r12mr3422152oij.59.1580918109650;
        Wed, 05 Feb 2020 07:55:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918109; cv=none;
        d=google.com; s=arc-20160816;
        b=G3rPx4eC8AGGToO/T8H4tqEnn9Ik+ze0UhHuI7BemWn/clsCdKT8pTrCa2IdDDuuIq
         4Bh2Z39nuUbNm8GYbbf3LXA88n8ebWFc8dkhdsU83IDXve2CRQdFCu/PQ4dY1G4Fmbzi
         9CpiWeOAr6U6LlpnqrMza8FdbtdI0HmpY6SfRDiHelowHXF8OoM1d9xG++T5U5lJGsnp
         qxvxiigLPAajTkL5ZkQ+tYcib60BvfrZGEgVRIB7vCBfcOteYwdCHEoRF37l6fWhZqpX
         mzKr+hMWzVOuRlEJPSqdwyVzxeOHYvHM2VZpp39OWqLXVh06hPdyg/3e6zeYne3uvxwR
         +JiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=1F3xjpehDBjF/Myx3pb+XfwnS5+rAD0AgER+Dd+bkYE=;
        b=UbgKNSzpBECNW1NbP0IsaWmbdsve5ZH5wEl+TIMTXzfXYPyjdl5kBHWu/fzR2NstO4
         uc2BJX6vGGiQ7Rqln/TZs/4aDzyYgktc1jaotntNrRzmm4FyqbGoBdiGH8UpwcFxMnPG
         9KwanSnBKf+9I0co75YctfgH/+ZD4bhg4mpnO371zNI53Oc6XtIqk7EJ80xEfIcfjbBs
         63+qPH4JsPr8D+Mm0QTmkONAr9EVCPkPm41m54AeVbqfy6FHaCYddx4QF/X5UKY2Z0g9
         nWPJnTltDEQhmoHXa3J9Z81V3oEknGWN9wZLcZRI2MZLEIjo98cFscgu1aXgnsdsdAMz
         bH7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZMvfnoQz;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t18si9969otq.5.2020.02.05.07.55.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:09 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 84so1413936pfy.6
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:09 -0800 (PST)
X-Received: by 2002:a62:e414:: with SMTP id r20mr36831080pfh.154.1580918109339;
        Wed, 05 Feb 2020 07:55:09 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:08 -0800 (PST)
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
Subject: [PATCH 07/15] NTB: remove handling of peer_sta from amd_link_is_up
Date: Wed,  5 Feb 2020 21:24:24 +0530
Message-Id: <7239c2cfca73382562ba8c6579e262b308143304.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZMvfnoQz;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::443
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

amd_link_is_up() is a callback to inquire whether
the NTB link is up or not. So it should not indulge
itself into clearing the bitmasks of peer_sta.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index b85af150f2c6..e964442ae2c3 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -253,17 +253,6 @@ static int amd_link_is_up(struct amd_ntb_dev *ndev)
 		return 1;
 	}
 
-	/* If peer_sta is reset or D0 event, the ISR has
-	 * started a timer to check link status of hardware.
-	 * So here just clear status bit. And if peer_sta is
-	 * D3 or PME_TO, D0/reset event will be happened when
-	 * system wakeup/poweron, so do nothing here.
-	 */
-	if (ndev->peer_sta & AMD_PEER_RESET_EVENT)
-		ndev->peer_sta &= ~AMD_PEER_RESET_EVENT;
-	else if (ndev->peer_sta & (AMD_PEER_D0_EVENT | AMD_LINK_DOWN_EVENT))
-		ndev->peer_sta = 0;
-
 	return 0;
 }
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7239c2cfca73382562ba8c6579e262b308143304.1580914232.git.arindam.nath%40amd.com.
