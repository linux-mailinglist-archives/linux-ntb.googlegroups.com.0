Return-Path: <linux-ntb+bncBAABBW5FRD5AKGQEOWCK6QI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEA324EBDF
	for <lists+linux-ntb@lfdr.de>; Sun, 23 Aug 2020 08:55:25 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id n16sf3943786iop.19
        for <lists+linux-ntb@lfdr.de>; Sat, 22 Aug 2020 23:55:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598165724; cv=pass;
        d=google.com; s=arc-20160816;
        b=UFXgdT6IcZtfnHiEAvsjz3HAZxAi0w6zUi02GvLblCpPLdDdt6S0W6QGwaGS5cNduT
         vsNqPwePwWSzqgC0KzUkVHNMniGy7m0xbGWYcXGmL1n5DyqpWofJvVwFb1EcI55l4N9P
         gsMyxlXv8VkvMoltmxnxvox1CWJNkaUvOC7HL+O+6USQ6Ujy7pQbjxO8/eZoG12ruVbe
         C+1WWPUdfBV4+xssRJq1tEc0DEwZITO9Y7T/zeQmbRIOsv449B0IspKnG7DmuioEXCBT
         cj+v8Wiw8aW/+M80GuX3UWysoRGZOyyg3BofaG8M5EPaMe7cCHf+EoNdV1rGWqMXLbKP
         8MJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=iaLTenfiQIhPKjkZ0U8gBtgxx8LVpPVGtJ+1HMdKgyE=;
        b=aOoBcwAz2n63hKnvxRUsrDnqVRy6GnYYytXbGyuEEiKok9YfSUBHmDeTJ9U2v7y8yr
         X2AYoID6m7c2KBtq41jZVpwtuC8avg+R3iphk5Y6FyQKmun0L1cE8ftduy9bL2BZmuCM
         eazhTtxeTF1OZ5QBTuthCa7/ZjIXR1YZo1ESH0kqkUIQALYpOkzAzaP0f7504iSNoyNW
         YjibZaoH08F1phdkZSqWTZ19m7tCSyncrMQNpxRgSsLpisZBg9+CFx7dcpALnbZef3R2
         hnZgR8p83HMwTubuIFC5qRdof4aF2yBHbnMrgIu+YsRnGLV44y5I6sy4geRonlTh1NYX
         CAug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghao.liu@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=dinghao.liu@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iaLTenfiQIhPKjkZ0U8gBtgxx8LVpPVGtJ+1HMdKgyE=;
        b=MQTNSDp3Oota9vOtmhTgdGPCtZ6wVbb2QdtQhEcMk5dmEaB0M7eu8zTk58aDx1CrUb
         eJIixnEMAQfs/uw0L92bSQIf+LvYdrcNIQO8syK1P4Deedn0aqin1oQOhUWbvLqymU1G
         UdkGoKhGvLkH0McE9p/Go6kauSBI8tW/PwAUIVTewQTosgrzl8kYNE7txiPNVp+oehdn
         WASKoHtnoxB7eBPoK7aLlgy/ANjPPSFfv/AM8Zjs/kDQ2fVxUOUs1T/NfzfAS13Bckhr
         C4fQv88pM8Glhk7rRijudOWTlXneK6JwLttnz8ycmckVwb1dlRtpPg2X8MRK3xAUPGwY
         rQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iaLTenfiQIhPKjkZ0U8gBtgxx8LVpPVGtJ+1HMdKgyE=;
        b=fCvHpGBenfGfqDRLBcc3BBUMxZr+kJwsYpK98sUr/dphPgNJeFBeryLnQlL+YkaTnK
         FCMqCe59PORw2w3U6I5sPlcISuI5aNbLomdgRaj+AoveIWyU06Nr711quuywFbAIHgHZ
         oQc4iR/cQcrJ1IeUvpxMsXvZyI1fYgvF5pNcf9KtPtPcrH5Ina8f4xuiF6gSdOHEs1B/
         8KD/+pYMwkZVjxEelSJcZYcEshTANnZMpwMWDrHP4/Sxb+u1FW82/uAWF3LEdh6xAR25
         9lwEpJkyop39kAPoou80FW6gxFKyaURfvop7n1ntpzIpZVQeRuVYXIOjpnNKwQSTJfhJ
         RaTQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531LCPHsadt1/hR9n28GU7sYIhpcj9nRlvKyFWjClAXAY0sJ+HLH
	7YPbl8GR4qVK/8HGu7Dx3qA=
X-Google-Smtp-Source: ABdhPJz9f1ZgUv9yN78hhlQHOs/CPZOhvTiEqvCnWDglmcQq1mSqa87jLOv8r+u8newV0M86Mq9HHw==
X-Received: by 2002:a02:544a:: with SMTP id t71mr297278jaa.144.1598165724301;
        Sat, 22 Aug 2020 23:55:24 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:1941:: with SMTP id e1ls40954ilm.3.gmail; Sat, 22 Aug
 2020 23:55:23 -0700 (PDT)
X-Received: by 2002:a05:6e02:e8c:: with SMTP id t12mr274182ilj.34.1598165723696;
        Sat, 22 Aug 2020 23:55:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598165723; cv=none;
        d=google.com; s=arc-20160816;
        b=zyF/4qvu6o5UtN13mlFCMx9igpAOPx3Iuc5fk5yQolOU8kDHzquqsseu98CzuQEQmm
         VJR8Xm9icRmX5oY0fHjSqk0ty6Sx9+zJ0KT5UhWp/2M7vM2sZMnn9sSvEEj/33uBvfwa
         PiRtYSKG0iF3ewRBiC+EX1ojyq+GUhIgsWdFtG/B3VGneCulQjlmoVQUBtl5pXT9GRRQ
         Z8/VZ+xXxrJBbm/0ILKNo7Dmrfju+c2WtXztzlExBtWUWsSuLGxQoki9zLVPjGJnzMGc
         X7WwQLDXOG/E7bhDZ+VROh4T8v489UfL1QF8wYuCXJu7h0OFqQ2Gq5P2/gL2/NpItHyg
         2dlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=MRNOqw1Sn4eQp1+dThz1Ysg5pHE3nbsYIjvMVskkciw=;
        b=TXWxQLioEVvrcYuqVKuBi0SK2IzmP09h6g1ba+ItEElzyd/9+Rzfzed98IAHyt/bav
         btTZ5i7G1C/+hkUzxelhSBEzhvu+bhZIj/EpvgXoFTsWFzL4ria0dQVIVhhay4y0ZGcl
         M/KzEYXtLZf+5Qr5oyxvVfrRHH0HWjTxQj/fI1swbQAL6L9chpm3I53yq2APf1BpVdCe
         UvNsXNrB3GNmHku/43QJGUBNjW0nUFjPMZBbH7JTor2hZ0x07PaRXQ5iCFfYsNdDT3qa
         NJDH+KKsKjCU3pNJSPo8obiKAMa2a4gz5w/5bIuL1ua4PkjAEHD8LpUWMDtxkKQFZnF6
         ml4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dinghao.liu@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=dinghao.liu@zju.edu.cn
Received: from zju.edu.cn (spam.zju.edu.cn. [61.164.42.155])
        by gmr-mx.google.com with ESMTP id t7si327455ilh.2.2020.08.22.23.55.21
        for <linux-ntb@googlegroups.com>;
        Sat, 22 Aug 2020 23:55:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of dinghao.liu@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: from localhost.localdomain (unknown [210.32.144.184])
	by mail-app2 (Coremail) with SMTP id by_KCgB3H2DQEkJfpuAbAg--.29268S4;
	Sun, 23 Aug 2020 14:55:16 +0800 (CST)
From: Dinghao Liu <dinghao.liu@zju.edu.cn>
To: dinghao.liu@zju.edu.cn,
	kjlu@umn.edu
Cc: Dave Jiang <dave.jiang@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ntb: intel: Fix memleak in intel_ntb_pci_probe
Date: Sun, 23 Aug 2020 14:55:12 +0800
Message-Id: <20200823065512.11626-1-dinghao.liu@zju.edu.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: by_KCgB3H2DQEkJfpuAbAg--.29268S4
X-Coremail-Antispam: 1UD129KBjvdXoW7XFyDtF4kWrWDtryrGw1DAwb_yoWxKrc_WF
	yku3sxGr40krySg3Wj9F4Svry2vwnYqwn3CF92qrZxCrZrZF45CrWkuF4rWFs8Gw47JrnF
	kF15Wr17Z3s0vjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbIkFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3wAFIxvE14AK
	wVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK6xIIjxv20x
	vE14v26w1j6s0DM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4UJVWxJr1l84ACjcxK6I8E
	87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c
	8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_
	Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwI
	xGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK67AK6r47MxAIw28IcxkI7VAKI48J
	MxAIw28IcVCjz48v1sIEY20_GFWkJr1UJwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c
	02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_
	Jw1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7
	CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6rWUJVWrZr1UMIIF0xvEx4A2jsIE
	14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf
	9x0JU-J5rUUUUU=
X-CM-SenderInfo: qrrzjiaqtzq6lmxovvfxof0/1tbiAgoSBlZdtPnBhAA1sq
X-Original-Sender: dinghao.liu@zju.edu.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dinghao.liu@zju.edu.cn designates 61.164.42.155 as
 permitted sender) smtp.mailfrom=dinghao.liu@zju.edu.cn
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

The default error branch of a series of pdev_is_gen calls
should free ndev just like what we've done in these calls.

Signed-off-by: Dinghao Liu <dinghao.liu@zju.edu.cn>
---
 drivers/ntb/hw/intel/ntb_hw_gen1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
index 3185efeab487..093dd20057b9 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
@@ -1893,7 +1893,7 @@ static int intel_ntb_pci_probe(struct pci_dev *pdev,
 			goto err_init_dev;
 	} else {
 		rc = -EINVAL;
-		goto err_ndev;
+		goto err_init_pci;
 	}
 
 	ndev_reset_unsafe_flags(ndev);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200823065512.11626-1-dinghao.liu%40zju.edu.cn.
