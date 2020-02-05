Return-Path: <linux-ntb+bncBCHK3VHCYUIBBT6K5PYQKGQE277SKLI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B831534A9
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:54:57 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id l19sf1188734oil.7
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:54:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918095; cv=pass;
        d=google.com; s=arc-20160816;
        b=ncrSTwgN3f5mmTgvyB4JnfHr9haEBfqSRUAXDaE9qoY4/+issDLvVyvJjtgMO93Ox7
         vNCg2xD4U4ZWgpcSgGWNr7GvLsLeiy/MWN1cO71yfuFkhXa1m2eeN+pT4pdlljvTnGEp
         7Mfl4eM9NWLPe7sjr9pmXTeGc7Dl3FmdWjZODNDM29FfHe9iONzrbeLka+kXJgLlvQ28
         wn90GbdbI3buZUXOIzJdou9Lsfj57rFawVNHGHLZr62XFqdPE+z3eBpYkDv7OcC5l+0P
         ae12+XidkfOUmu2BP/7ft9scZc+vOXwmKQwY0r3NLexyF/5OslTcLIQGks4i1v2TTVSF
         HSVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=XthD4MHyMvBdpMcxvsG9IRTjt+16fAkc2TPYhYADvuM=;
        b=I9+SCo/LhBpfxwE+PIxEmhJJNBnf4x1aM8+os4wHNeCLmhOLGnDf49DiNRkQQ2dcut
         tJvg1djtfxbtheQyrKlCWX0Ql1PIXR5Q427SW6SE3KAEqKGRYeRXIcmBdDCgkKwlX5nY
         NS7zvDqnnIRkwCYEr+hEuBgITo1U3zFOwUDi7oM659r9L26V1YFn4Xba9w3En3TE/uLM
         1AlF4G7EDOISrvMFoeFD4JvK1gLvnbiRX+0tG8Y/hF9+cLjj7gn8U+XYsfSwcCbKR6ad
         b3btuxc9x9MushED4/mKmi7iJoDjXn4bHU2hBfbWQyqKRs7Jeb1+znBnJXFMnz4To94d
         eIoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=izizXlau;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XthD4MHyMvBdpMcxvsG9IRTjt+16fAkc2TPYhYADvuM=;
        b=sTjy4LxpuldpwI+6HbKAD0y6E1OWkq+KIKtoCxr36WBldX7jTsoEY1CArhi0BmYGlY
         jsSLMVLTGE64rhNdZiUv1ytexohXxEiIgzkuSi0MWW03CmElWHJtt5Sep46LWdt/EKxt
         sTPLUW7WzawzpFlvWEdWdPX9X961i41nHDaWjQFxOOOTYG8uuKY6LTTvcLrWe18MoqFX
         /C+8YHVhnZiXCdCh0UV/H9ybIsIvGY5fStEfvX0POO/D5RjX7J3Aj45A5oxierAI2VpF
         YmTWfeYUjHrzHFDknFdLz38Z37UcZwYAJ7HRKU8IEsEETSgaDZs9TSuEO7yxqCCiLqt+
         F5IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XthD4MHyMvBdpMcxvsG9IRTjt+16fAkc2TPYhYADvuM=;
        b=jZxMbz3q1tg75qO6Bgi6ZhojKuzb3a0IyNS3EZJoMrfPtAYVunmmzqY3DGW2a/fclM
         1ba5nH4V+l4NhEnOEmkOR2xYtYv4qvrVPDXk4/gODFFWwaHUhnq5YCVE53Yvw1e5o5Vb
         8FmOcqAkurBOfYw2nCliRTSbWoric5RBfBihTeO8ScZdPa246UbX+oEKvqzTZ2tmR476
         K6QhyEWKyGMP4gUT7GDfX16nzPBcQ6yF8bykpJ0DpOSPRFSwbGZe8Hnu251pnHQLEMrr
         CB8J4OAXxWS5VmvO+iPGpaU4VkZX26EKuTlowjZYAMG9rNRIhyuwFwjpfsLnXoPvECqw
         tO0w==
X-Gm-Message-State: APjAAAVgIitZ6ZJoehmMV7nUfq3ui5kR1VDohdoFp+Vqn+NFdSdrqEeH
	4u76FxrvF1gXIfbNrn00hJo=
X-Google-Smtp-Source: APXvYqzY0qnE5VBEagQ6IFDYbRyyBzCL/AON8wyoWkmPTzdEeGC5N3O5WuIhjVnTxVyl7yiNQLCUYA==
X-Received: by 2002:aca:53c6:: with SMTP id h189mr3399947oib.11.1580918095734;
        Wed, 05 Feb 2020 07:54:55 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:649:: with SMTP id z9ls686290oih.3.gmail; Wed, 05
 Feb 2020 07:54:55 -0800 (PST)
X-Received: by 2002:aca:af49:: with SMTP id y70mr3480703oie.162.1580918095290;
        Wed, 05 Feb 2020 07:54:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918095; cv=none;
        d=google.com; s=arc-20160816;
        b=Mn8xaNuNWCEbjRG244X32bSsCAqdZ6NftBWFcYtoEB1ak7ftLxVwkmgQ1cP2XNfyGP
         9m4xcQ0g9dKrJbeC2ICalhY8lDroPfsTyDAwz/xwqXGasEDHGgVAPCmv8i5KwcN7zcI0
         qaU9UEX59045Qndvx3UCTLwHuYmWer5vT0h2q9tyXiMLwwrqyA697/BQNKTh0lVeTs7J
         l+5wej34uzmVjGuzyUEudJvZTlirPe6rrngCClmxQtBMTO589ThwyswANdxDJPF+nYAY
         NjYuFdT9Cvwm2xhKyQNMW1Xqk/EmH6Xv7nT4V7rTBQmAgOqzM03PbyOU2JKBQW9bhPdO
         NdVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=38D5H6zWkyahyYYe28XDPgybiJeKYqOpfDcJIda7PSg=;
        b=Qsr4gHH7SCGCWybbIsFohvkiF5PNm6ILhDknJc+bitStE1Pa6Hci88etxIXxrnU6yh
         P0q1m2heMn1wpcvMdipV6IY57TVD77sDbeinohQE0tWx49sI25vi+Nl2Sg3qhRxWIrWN
         39bLceID2wd8Cm3GyJiOElEwbHjDFAIKneQSAihBnWVrTfYL74d12rDHU7KNPvUucaut
         7CizfRZNtQ/qBYQNFJsT3DHt3PCj1PXwDmN7mhnhORFfYJQTy29ox6l+vIHsE7603x1G
         j07YBTIFiaGYOyKyhGtYDXn4cGCJWUWB4yriltWX7G45sHze6YbHX0gKeffeh8i2uOrP
         rqWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=izizXlau;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id t18si9969otq.5.2020.02.05.07.54.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:54:55 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id 84so1413936pfy.6
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:54:55 -0800 (PST)
X-Received: by 2002:a63:a411:: with SMTP id c17mr2034288pgf.450.1580918094540;
        Wed, 05 Feb 2020 07:54:54 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.54.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:54:54 -0800 (PST)
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
Subject: [PATCH 02/15] NTB: clear interrupt status register
Date: Wed,  5 Feb 2020 21:24:19 +0530
Message-Id: <92dbbe6f9b6a54a2169207dbff10e1dfa6f9d3b5.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=izizXlau;       spf=pass
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

The interrupt status register should be cleared
by driver once the particular event is handled.
The patch fixes this.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 9a60f34a37c2..150e4db11485 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -550,6 +550,9 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 		dev_info(dev, "event status = 0x%x.\n", status);
 		break;
 	}
+
+	/* Clear the interrupt status */
+	writel(status, mmio + AMD_INTSTAT_OFFSET);
 }
 
 static irqreturn_t ndev_interrupt(struct amd_ntb_dev *ndev, int vec)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/92dbbe6f9b6a54a2169207dbff10e1dfa6f9d3b5.1580914232.git.arindam.nath%40amd.com.
