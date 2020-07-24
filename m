Return-Path: <linux-ntb+bncBAABBAF65L4AKGQE7YBOZNI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BB87722C107
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Jul 2020 10:42:41 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id z187sf5898514pgd.11
        for <lists+linux-ntb@lfdr.de>; Fri, 24 Jul 2020 01:42:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595580160; cv=pass;
        d=google.com; s=arc-20160816;
        b=DEnXQiAqW4pGeAzovW0/+04mI8EyFB9WbpMMzZP+fljPfq3Dnundj5i8brRNfQfphc
         E6kY8ByQnlPvVQ1DjlCPbeYqqgNg4O+uIjqkuqeCzkgTtyz5E7JCyrQuPRyIETme/HX3
         kQ2GiF7B/Ik50o92WPi25FPH2bO+o9g1i7PhGZJaF61UHPWAMLo1BoNEVJ8SeRTKyIeo
         kqZPTxJgRAtBpCsGZnCnTlZDr57CnC6A/afgE/CvYbwfXTBgfNUT4H8jwoQ+m88JqGPF
         zlnYjDwkQ3Yxk7oqHW5yuHzn9N2AvDKWzp0p/7HSX7G84bbaOjD37VCs+Y2VqbxQ2uWo
         9f1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=fapBy7w/JEQKZa+R93ZxxIimyPVIu3RtyOSb1swQHl4=;
        b=X7SnGzcDaIKe7KggUB+4V9QYDA/FU9QsjL9mobiJ5tbkTSdMHcxLcpzvDyRinBre4+
         osF0j8FM0Tr19+LU2afBSN/afRubsxCj7mt3g1uDFvqLBaEKCtPkP67b7WHJOzhPF2Ta
         X8Gx1PZN40ySm6hPdxGsk/1oqO44lxSWocGb7AwdtB+ewaeH3qeuVsAOESaatzM28/uc
         ZU94HwIuvo7S5wq7rtsR+8auGXaSPSvd8Powrdrjepa05m+5up3KKE0/EjRmWN5CT0e3
         H7DocwvMnUvCBid2iQ2xHU1JjExf/IoEvTEqUbKi3rny0aWHtZaP9sVEKByK96FsQ3vu
         6uug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=likaige@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fapBy7w/JEQKZa+R93ZxxIimyPVIu3RtyOSb1swQHl4=;
        b=FIPzjTqJWwROgTIpIl1BXOWu23Dle0DkEWfxhREcAPriJ2Sz38aVfQa39eoqlW4QsL
         yx0NZP3BbnpfqCigR8qUhSC/UrsvpuJ9aj4Oa353G0506KvJ01SrTb0i6n9uaOBMIFB0
         tdcEnIUPv75QXPPGJHDSOUlxMY2JSj5JqZOcyJw6V9Q5RTgpH8MMuw7gA//VxzYqxo7H
         A/Jvi/n+0CtdsQyphxumwcvBLAWtlIDAKrHmopxqex0DY1BAJgWOWzH3OkYVhPbOjXlK
         79Sc9LheP+QG/lstdB3itx8EqKVUI8BxaC0CLhr8pbgftkM3HEsbuuIeNFa4cOTBvPKf
         Q7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fapBy7w/JEQKZa+R93ZxxIimyPVIu3RtyOSb1swQHl4=;
        b=kZjJ4MQoz9HmnHmovX2XoLu9MesZG22hpgq5HlCBD8HDEyTbdDKtyqdto5gVHSaROe
         p1zcsoSm2BHejoalbpQUslU2u19Ry8iwn1GoJp2/Mt6jkC7ADmpt1kBr0s1cWcV4GpLT
         zRG9YeykXkNNXPU+wbuKqnKDX2KpxFyd/G5Vngk2xhSTvJJ5vHMen5oMSxY4IidGO06L
         6hVlEKfqkf1Q+38ObJZAx8kxjeE6+FSB5RbM2td3VHC6qBL4QX9VS3YkaXyvLsu2iwqT
         /iqOnUFG3xU4Bce4mJl5ZFO6VYxH6MZsoaespcrAfNsPy337sCWQP94ftj/SHgh2fIAC
         Z8tg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530IERbFd/xtvFDkuYJ4DuqJa15Tt/KpQ2HGKkiAW8IITzPWFnLp
	PvNhYUy97eqWoRkmz26/vws=
X-Google-Smtp-Source: ABdhPJzOqwTrw6N9TaZGd8KTpfYV66ViV4GXy7eJHva2q3hcSUWHI/2XGqsXvxDlm7bSUKYYh2RlIQ==
X-Received: by 2002:a17:902:ed13:: with SMTP id b19mr7247324pld.294.1595580160473;
        Fri, 24 Jul 2020 01:42:40 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:cf0b:: with SMTP id h11ls3103822pju.2.canary-gmail;
 Fri, 24 Jul 2020 01:42:40 -0700 (PDT)
X-Received: by 2002:a17:902:b905:: with SMTP id bf5mr6956683plb.250.1595580160143;
        Fri, 24 Jul 2020 01:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595580160; cv=none;
        d=google.com; s=arc-20160816;
        b=uc6JAenMgmuwdPnrGvDm5ymzPNFUvgGTotqgf6WmYzlJG9gxBbjrz5fXeBREhdgfkd
         T46cf2fCjkI2LA4ip/VYnbcN62EAqZ9M3HYxAACdPIIBAzUNCfenM63QmAf5nyjSRGt/
         aSmRp8gN3m/4c3fwHGIikQKh0POAD3lpCCfWrBaju4anbB6Ek/saxVPJbAwa0qIvTwBC
         Uk8gBQ0nyjJXhaTU8SNLR4pOjhIGu20V9qbUAb6cygH+PgTCS6ZA4SX0UfcfoMV+HyGx
         sWU4y8Nc18+4PLADBNZ9o/m0zzdpcu+T4KeeILzx4kljoJ3mA0IvKmeYXQLLr7qpemQS
         ot4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=bXKmIqJ5kAnt+ZmexQB54Z4R7KLjTNXIYvb5mENZ59E=;
        b=bhyPP+Pvs0aGvdVN6vgBgy8+S1vQXCVN7RVq70EmwEGPOs+jVlKO2rPNzXSYUkbCM7
         yrbAEDNgMsliIyf9gzoPfeCpt3w7OAJPUG5UsybJIXhHVLQJ00QKo+zqJBZbrYcOoh9r
         jH3QcxuhkyWEtuDYRWUHlJivbMH8dpbp1NLieeyN74Bwtf6Z/iOmhjSIQBZK5DRbwudT
         1kUWgAaUGTFjDY5d5RbXScbUY8BoUb+A2y+QnGX+eoiYY2RxR/ChhLh8gJXWk7VugTdc
         FbC5JT4HSOpjRpxbTN2fZcimeBdFXN1sKQu9RQLgzwuJTsRQ9+qqgshGpQr/UzGtFzR+
         0Hvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=likaige@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id i6si206265pgj.5.2020.07.24.01.42.38
        for <linux-ntb@googlegroups.com>;
        Fri, 24 Jul 2020 01:42:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from bogon.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxX93dnhpfUhMAAA--.22S2;
	Fri, 24 Jul 2020 16:42:05 +0800 (CST)
From: Kaige Li <likaige@loongson.cn>
To: Sanjay R Mehta <sanju.mehta@amd.com>,
	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Xuefeng Li <lixuefeng@loongson.cn>,
	Tiezhu Yang <yangtiezhu@loongson.cn>
Subject: [PATCH] NTB: hw: amd: Add missed pci_release_region
Date: Fri, 24 Jul 2020 16:42:04 +0800
Message-Id: <1595580124-407-1-git-send-email-likaige@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9DxX93dnhpfUhMAAA--.22S2
X-Coremail-Antispam: 1UD129KBjvdXoW7Jr17Jr4kWFWkCryDtw1rXrb_yoWxCFg_G3
	4rZws5Xr1ktF9xt3WSkr1avrWavFn8ZFn7WFyDtF98ua1UWrW7u3yUArs8CF1Y9rWjvF13
	uF1UKF15C3sIyjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbckFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
	Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVWxJr
	0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK67AK6r43
	MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr
	0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0E
	wIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJV
	W8JwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI42IY6I8E87Iv67AKxVWUJVW8JwCI
	42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf9x0JUSeHgUUUUU=
X-CM-SenderInfo: 5olntxtjh6z05rqj20fqof0/
X-Original-Sender: likaige@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=likaige@loongson.cn
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

The driver forgets to call pci_release_region() in init_pci failure.
Add the missed call to fix it.

Signed-off-by: Kaige Li <likaige@loongson.cn>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 88e1db6..71428d8 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1203,6 +1203,7 @@ static int amd_ntb_init_pci(struct amd_ntb_dev *ndev,
 
 err_dma_mask:
 	pci_clear_master(pdev);
+	pci_release_regions(pdev);
 err_pci_regions:
 	pci_disable_device(pdev);
 err_pci_enable:
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1595580124-407-1-git-send-email-likaige%40loongson.cn.
