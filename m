Return-Path: <linux-ntb+bncBCHK3VHCYUIBB46K5PYQKGQEZJ46ODA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9722C1534C3
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:32 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id y2sf1375801plt.7
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918131; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHnKuMGOJyRyzsllaBRnog6UGdaKGaUiVXc/U1RKYbmDfBK0eOlRNo1Ps06PBFl2JW
         rexNpQtgzU6p+F2GQNCqPHAdOlkXX82ssiL0RDyXzMQR8uMz+5XlKvWQiWmJ8mx777Hy
         HgviJqYO5xU2tN48J05CO6eDInIdMoo/wbE43/1KdnaxWzN3HLHmSbQ7Rjp5lbpqLBOS
         WVFMuOk7xerE5afLdGH7RpFiM9QlGT2LKZB4jjUoxc/vkrw725DdlWU2w5J7XNQT0OcK
         uspyG2AxCYn9aLAPjqKSycGgkRVZ4m5UdpP8naIkG8BeMsp+Xx7yBtU2YCgkb+8/khdI
         e6zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=rgaRMwA5+jB4R8r44310ETfmG0v0wMwo7W1KBWMo3y0=;
        b=sQYxqmI1ctLYFyFr7PXkzSQyBrVr04/3dF9LKIrUuIAN2bKalHRpl/5APsph6CKZPC
         S+2kXYgcyugM43IMFZA8TOvCQox+Jvdn6YXs3YfIua2Yw7+XQnLcSBoAUAyprwe+buYn
         oMhst6H2TbSoCR4LggOflyrpejRgRXOmzhwObgHrqclrUBMN8sM1eqcMK2lgwKKFYWA+
         PbxY1IeRe1JVhHkqBtwZ2D2KYUHuCYpYGu/5r1wf3F6C547hCHjMAIHPY2yCb8WyvD+/
         g4KolNEmQYI3E0THFcY/9eSY0Jz03MlwPhsswwhUe8vPqkelrBQWBojTuJrpgyK7A81a
         EsrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KcUUVv3V;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rgaRMwA5+jB4R8r44310ETfmG0v0wMwo7W1KBWMo3y0=;
        b=dFIzVXppE1JFDnUTixYmZPle7jWZR8DYrx2Cm/EdgFgxfZ/1Y+kVXJXk2tgryfFIVB
         BNxTWVLUnqW8EoilIIIZPq4Pd6bORaJIDJfnp25rdvwQ5tXBCRpsoAEvgQMxJqILzchn
         usb4lY9NR93IA3iyk6eNj13HP0cMP0ipxBri4S7VIKmff4N8RbCJUAd1epHUCELJDO3g
         v9jmZk5jiLKdbIJY6UmRh+PE1ycQ+ejX4cROT2NkV/veFbIec8xztmOQaytPqQtzhVkV
         QToLsHUlGnmuMth6X3PkseCKyCR4LmOBMSLubZuaQPw24yC5X85bBHqj886iDr2J2okJ
         jW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rgaRMwA5+jB4R8r44310ETfmG0v0wMwo7W1KBWMo3y0=;
        b=Kq0lr7qsGGtheRjK0Apfgirdc2C/SgQgaqfmcJWftYYXOtuy49znO/AwKIE9XkpvId
         QKwzi605niknPj+ki+Qu7xyOiWwWqHHCMUFlBNvHy4kIQWrdmIkVYA66d0xosA74numA
         gER/P8ZEXvpNYpoXQ3ByZKjupBwds0XQ7ALkj6rkVPdgJghwdgd2496nyEH9p8Db662C
         CLHfSOPDJ6UtLfYLcwAzhgOPJB3hOrgkDr/O47fJpnOW6e1DsdinxMHXz1ttK2Pu5ZCc
         PGxIledkHfYHFhl8qBhI1MQl4ljTU1yOx+8ZUlS0/CHUNGakniw+Mn8qaQ+PNq9A/9lT
         lfbA==
X-Gm-Message-State: APjAAAXEBloK6pF/xJdwzdaEBu97VpLN/DGxdoG5cadHpzcX5o/6gXE9
	ipomfmiqxMKyv0SLSNmqSiI=
X-Google-Smtp-Source: APXvYqw37LEPStRTHEqSeL3UkidYS43MkoNJB0DQTkEr7XRmCekgT45qnKgc+DXWeDoc/AGTeqRmHw==
X-Received: by 2002:a63:7a1a:: with SMTP id v26mr718923pgc.51.1580918131257;
        Wed, 05 Feb 2020 07:55:31 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:567:: with SMTP id 94ls1284416plf.8.gmail; Wed, 05
 Feb 2020 07:55:30 -0800 (PST)
X-Received: by 2002:a17:90a:d789:: with SMTP id z9mr6433207pju.5.1580918130625;
        Wed, 05 Feb 2020 07:55:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918130; cv=none;
        d=google.com; s=arc-20160816;
        b=a0Ll1oyoBn82tl6eU71spqFfrmCwqhFDZhY1zPJJJJwEETZdf7xgnuJp3C6TijksiM
         AD62rWjS7PykGiPoJ1D8aORfTQtdCkCoHrQBSZ4v1zcq4fwJ2LqgM5YhZ/+xVSxT7gtT
         72E8VMl4iQPENOIEXKA06g3LoNyuHtNncQ5M72acsjEtqwiaB+rpr08xDExrq9gbEDyq
         0MRb3sh6TtB9Qj7Fyxcskp4K1wBE5Ti1bamQELVfQ4XYBAdFV70CsHjhLDJREI1zhWz7
         D2Fr7ReUA/czMyxhZMsa/gnG9D/ejhIZ/d75neUHXnD7rDStGA5mHRuAtYpCYczfl7uc
         nsIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=RZ6Ct4Oj3K0GAue+qavlZN4QrXIm9tOhLLMRLW/Kj14=;
        b=jTdQc01lV6dq5qmL5mSPtnRXO+WsqkkWsewsFz2UNnkGzioMkV1EH5oVhsvG3FhKBm
         3tRYWz92Cl9jp3NwTGUiGMOKzMSbrSNCzYwpUNjvrNrWZlQli4O9jj8NPzAsGsVQN/GN
         Wrf49khMncNV/Y90ThLTbZfkr5gGSoweoYc7X8ryAGymRpk1HBQQkb/Trq8uXBfrnW8x
         DCy4fsEa2iDZbhlCn6vn7wul7Zm1iyqmhDC12uocd4NaxqmL6ZmDLswUnCK+Ab0d3RvY
         ZgxS6aWiDwB7l48R7u/Z5kzbyc01w5n1RfWHE4YOpmNdfMlALibG8PD/LEF+RwTyRNXY
         cdsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KcUUVv3V;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id v13si3978pga.4.2020.02.05.07.55.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:30 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id c23so1045279plz.4
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:30 -0800 (PST)
X-Received: by 2002:a17:90a:950b:: with SMTP id t11mr6216301pjo.79.1580918130305;
        Wed, 05 Feb 2020 07:55:30 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:29 -0800 (PST)
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
Subject: [PATCH 14/15] NTB: send DB event when driver is loaded or un-loaded
Date: Wed,  5 Feb 2020 21:24:31 +0530
Message-Id: <e2f6de21a4faf6a44e18dd5f6429b6150913f324.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KcUUVv3V;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644
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

When the driver on the local side is loaded, it sets
SIDE_READY bit in SIDE_INFO register. Likewise, when
it is un-loaded, it clears the bit.

Also just after being loaded, the driver polls for
peer SIDE_READY bit to be set. Since that bit is set
when the peer side driver has loaded, the polling on
local side breaks as soon as this condition is met.

But the situation is different when the driver is
un-loaded. Since the polling has already been stopped
as mentioned before, if the peer side driver gets
un-loaded, the driver on the local side is not notified
implicitly.

So, we improvise using existing doorbell mechanism.
We reserve the highest order bit of the DB register to
send a notification to peer when the driver on local
side is un-loaded. This also means that now we are one
short of 16 DB events and that is taken care of in the
valid DB mask.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 57 +++++++++++++++++++++++++++++++--
 drivers/ntb/hw/amd/ntb_hw_amd.h |  1 +
 2 files changed, 56 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 04be1482037b..c6cea0005553 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -647,6 +647,36 @@ static void amd_handle_event(struct amd_ntb_dev *ndev, int vec)
 	writel(status, mmio + AMD_INTSTAT_OFFSET);
 }
 
+static void amd_handle_db_event(struct amd_ntb_dev *ndev, int vec)
+{
+	struct device *dev = &ndev->ntb.pdev->dev;
+	u64 status;
+
+	status = amd_ntb_db_read(&ndev->ntb);
+
+	dev_dbg(dev, "status = 0x%llx and vec = %d\n", status, vec);
+
+	/*
+	 * Since we had reserved highest order bit of DB for signaling peer of
+	 * a special event, this is the only status bit we should be concerned
+	 * here now.
+	 */
+	if (status & BIT(ndev->db_last_bit)) {
+		ntb_db_clear(&ndev->ntb, BIT(ndev->db_last_bit));
+		/* send link down event notification */
+		ntb_link_event(&ndev->ntb);
+
+		/*
+		 * If we are here, that means the peer has signalled a special
+		 * event which notifies that the peer driver has been
+		 * un-loaded for some reason. Since there is a chance that the
+		 * peer will load its driver again sometime, we schedule link
+		 * polling routine.
+		 */
+		schedule_delayed_work(&ndev->hb_timer, AMD_LINK_HB_TIMEOUT);
+	}
+}
+
 static irqreturn_t ndev_interrupt(struct amd_ntb_dev *ndev, int vec)
 {
 	dev_dbg(&ndev->ntb.pdev->dev, "vec %d\n", vec);
@@ -654,8 +684,10 @@ static irqreturn_t ndev_interrupt(struct amd_ntb_dev *ndev, int vec)
 	if (vec > (AMD_DB_CNT - 1) || (ndev->msix_vec_count == 1))
 		amd_handle_event(ndev, vec);
 
-	if (vec < AMD_DB_CNT)
+	if (vec < AMD_DB_CNT) {
+		amd_handle_db_event(ndev, vec);
 		ntb_db_event(&ndev->ntb, vec);
+	}
 
 	return IRQ_HANDLED;
 }
@@ -1096,6 +1128,21 @@ static int amd_init_dev(struct amd_ntb_dev *ndev)
 		return rc;
 	}
 
+	ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;
+	/*
+	 * We reserve the highest order bit of the DB register which will
+	 * be used to notify peer when the driver on this side is being
+	 * un-loaded.
+	 */
+	ndev->db_last_bit =
+			find_last_bit((unsigned long *)&ndev->db_valid_mask,
+				      hweight64(ndev->db_valid_mask));
+	writew((u16)~BIT(ndev->db_last_bit), mmio + AMD_DBMASK_OFFSET);
+	/*
+	 * Since now there is one less bit to account for, the DB count
+	 * and DB mask should be adjusted accordingly.
+	 */
+	ndev->db_count -= 1;
 	ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;
 
 	/* Enable Link-Up and Link-Down event interrupts */
@@ -1235,9 +1282,15 @@ static void amd_ntb_pci_remove(struct pci_dev *pdev)
 {
 	struct amd_ntb_dev *ndev = pci_get_drvdata(pdev);
 
+	/*
+	 * Clear the READY bit in SIDEINFO register before sending DB event
+	 * to the peer. This will make sure that when the peer handles the
+	 * DB event, it correctly reads this bit as being 0.
+	 */
+	amd_deinit_side_info(ndev);
+	ntb_peer_db_set(&ndev->ntb, BIT_ULL(ndev->db_last_bit));
 	ntb_unregister_device(&ndev->ntb);
 	ndev_deinit_debugfs(ndev);
-	amd_deinit_side_info(ndev);
 	amd_deinit_dev(ndev);
 	amd_ntb_deinit_pci(ndev);
 	kfree(ndev);
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 73959c0b9972..5f337b1572a0 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -193,6 +193,7 @@ struct amd_ntb_dev {
 
 	u64 db_valid_mask;
 	u64 db_mask;
+	u64 db_last_bit;
 	u32 int_mask;
 
 	struct msix_entry *msix;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/e2f6de21a4faf6a44e18dd5f6429b6150913f324.1580914232.git.arindam.nath%40amd.com.
