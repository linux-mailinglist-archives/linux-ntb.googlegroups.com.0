Return-Path: <linux-ntb+bncBDTZTRGMXIFBBX5XYDXAKGQEHBBXCZY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6FAFEEE3
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:55:12 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id w20sf6671093oie.17
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:55:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919711; cv=pass;
        d=google.com; s=arc-20160816;
        b=MQmQ7mJTDkwSfYszjK+9EDDIeuVFh3StaWPHNB8b5SrqagLp8LhlNqJm2AOWwq920f
         tWhw7HjMPW2q0SXYfUi8rideqMI06jltUPCk630B1woYc3KyVB2qNytVP+8v1R3NWa2U
         7HczXVFrYR/RJFwdZrhuWiEhdzcgGJZ3rDc63wwskTgcsnd/Sv2Cq++1I6C5cWssCyuj
         7V35mwT4F6mTaU6S47hLM7icitO+bvAF9M4cWueGcD+YFZYcLRit7OkAKLxMmyFjJvFo
         u+Qhki/62q09nW+gsYcQBcctU5KkR5sdmZ6O7h25FeYo3On3k59U/QCAZFUFGGE+DxSg
         Khiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AzW6KdkmdJb4q9KyRRSfmFtblZSYdn230m0Hg2E2DdQ=;
        b=h3K+XrBHuZWa7sIsMZHMqxYFt9p2Puq79lHLA1CDyVLawsXB/x9UkLrYuF80tMLGW7
         1h9+EHIyv6iGJHpA/bmY4nUJ/rN69OFB+SI5Gln9W2Xu1HV8Cfli3f1a7xGWYob86yJ0
         szJbLRjammYS1g1FjU09W0TUuxTbNh3mbjUE/V4BTyMZqUTWahrr+6/9u9PlJj7J0W2R
         a+Q8GrRL+bU10lbrPF/wEZru2txLfoQdywSCmni1FZo0t4t3KR4PUKlZ+1Lb9vL28c/d
         xuHPSZYFa0RUOec4W+qwLcSvOdUL9Iwin2miMDYEiRP2qNSymbOXz9Fm0ONNZs7L8rMO
         f7qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eCOnilTX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AzW6KdkmdJb4q9KyRRSfmFtblZSYdn230m0Hg2E2DdQ=;
        b=Z2INglBRkpyMfIQgxzTfsE++/HGx4oB+bxpc012vp2AOZgvOK8SfXCaLrKLeNWol+y
         1xVqY41bs0/h2b+hGGDYkhSXBnbCuqwCn5Bt0qlmr+T1hH2zcZeBUTCs9rCPouPTNxA8
         cDUzz47AjpN9dbMhO+KERDydFMuel/6VXwR2/0+jktJKtOBVPJztAOXRGO9s4nma+fqK
         br2Xo69N+gaZwxH1fe+AFay3rGdEbbFZXooI9uG3+Ir+vQ8Zj67u3Prnm8UX7Ap2XK8o
         BJh0LLvGquq7ZIInv1Ms53YTfnjXwuGR9QTGKDwzZiwoZkx3KHTYJ6D+v1DJXbKTGTht
         hbFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AzW6KdkmdJb4q9KyRRSfmFtblZSYdn230m0Hg2E2DdQ=;
        b=rdzxFyvBuDmdWNDJGWJSnswh/x4bacOGohj0ghLcMhd2Gzw2jOEnLOUbyzOo25mLLS
         +4PbGo7DbcSQxavS0AN4rDWyCsKlStnvdzaZNkC7zfQD7+1wb9WTw09nTvsBw8GVVKkB
         fl453OkhS0xpY2eUBXZMOcqdy8L37I3lp+Rb+mNfIQ2Xr7WwmT/rV3KNpLI9Ze/ant1B
         +6MXnDqPCuGAAOKtf/l0QK6sqSf1ZYt1ZprKXsCIn7jV24JOF9KVcNmmDTnaj824aO6j
         lOrpCGE5nQdmkZR5WkCQMhAFGR2YZPKpQucSTvVaMw1mw8odzcgnZo1S7Z7qPzehGPY9
         FrTQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXQrS8E/ebgnZScsGSCUxVuPYR3czfU7KojLIA68vs9Cn4F5tft
	fgfu6TDQFn7Eq5pSW7NI3ns=
X-Google-Smtp-Source: APXvYqwz2AlaRRO3nlrk5La7Uv1doT2CQ9cF/zLGLQ8Z91h6RU/5ey9yWENEggm/hR3diaTiYrAsrw==
X-Received: by 2002:a05:6830:1f49:: with SMTP id u9mr15649401oth.102.1573919711758;
        Sat, 16 Nov 2019 07:55:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:49a:: with SMTP id z26ls3675725oid.1.gmail; Sat, 16
 Nov 2019 07:55:11 -0800 (PST)
X-Received: by 2002:aca:fc4d:: with SMTP id a74mr13261318oii.23.1573919711424;
        Sat, 16 Nov 2019 07:55:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919711; cv=none;
        d=google.com; s=arc-20160816;
        b=DLCFKcy64WlReuksH/r9U9hvFv/1a3ZO6opbuppcWaNHV82KPjysOqZV/OMx/elvkT
         mIgzNpDK2GJTTn2gZ4+zCwNYfcR/2HYCfhxnM+MVHvuN4J9DkTr6hcg/6+zXiihm4k20
         0C+IpOYoPNFJ+VaBw3XcgI5mzNN+f9hmqjuYQRiywBx3c3Ls8DfHB50qfZlzsIHJsZoz
         /Tto9deN9gg38D7SJCa75xy1W1hCX2Qth7BU00cc6r+FW/pYU5k1ERak3eN1ozFbe+RY
         gEtu0LIALvs2ZQCA++Spjf1eu5uE1A2c99vTxypXlxr16ww8XxA6adIKot7YwNAmcGe4
         0M/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T6Q5q8lp16JklQr0WEr4LbDh1iUMGFINOL1LgopTkyk=;
        b=fZ5aNZuVp5mxmJk+3g7eGEMvixzp4dE4RrWKtvcyg4muMMR+WEd41OdSUn4iyIaZxi
         NYzK0rWLrjR3x00SMVjzplAfG7ch/z551+nIMhMEgLeSnwWC3TMANu9/wwOY7c6erGgn
         b4AS7swz4EF4ROn1wd+4a5IlEdccs27z5FUwFOM9LVKU7XZa3Lz7JAdr2d8NfLP7ELAe
         Modhuqt3FgANNfrs/mxqxh4pAGIRsAQL5drqjW8bhHi7VpZfRqY3g0k97P9kLZ0P7tnC
         P9/+HQOxF6oqxmC3TpOxtMDL/8+fOpoQ+MUHsuzWM8t6TY4H+gfw8E3ZlOogRXVjB2BT
         lIow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eCOnilTX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si629998otk.0.2019.11.16.07.55.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:55:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4185C2168B;
	Sat, 16 Nov 2019 15:55:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	Lucas Van <lucas.van@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 55/77] ntb: intel: fix return value for ndev_vec_mask()
Date: Sat, 16 Nov 2019 10:53:17 -0500
Message-Id: <20191116155339.11909-55-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=eCOnilTX;       spf=pass
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

From: Dave Jiang <dave.jiang@intel.com>

[ Upstream commit 7756e2b5d68c36e170a111dceea22f7365f83256 ]

ndev_vec_mask() should be returning u64 mask value instead of int.
Otherwise the mask value returned can be incorrect for larger
vectors.

Fixes: e26a5843f7f5 ("NTB: Split ntb_hw_intel and ntb_transport drivers")

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
Tested-by: Lucas Van <lucas.van@intel.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/intel/ntb_hw_intel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_intel.c b/drivers/ntb/hw/intel/ntb_hw_intel.c
index a198f82982582..2898b39c065e3 100644
--- a/drivers/ntb/hw/intel/ntb_hw_intel.c
+++ b/drivers/ntb/hw/intel/ntb_hw_intel.c
@@ -330,7 +330,7 @@ static inline int ndev_db_clear_mask(struct intel_ntb_dev *ndev, u64 db_bits,
 	return 0;
 }
 
-static inline int ndev_vec_mask(struct intel_ntb_dev *ndev, int db_vector)
+static inline u64 ndev_vec_mask(struct intel_ntb_dev *ndev, int db_vector)
 {
 	u64 shift, mask;
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116155339.11909-55-sashal%40kernel.org.
