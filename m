Return-Path: <linux-ntb+bncBDAMN6NI5EERBIPUZH7AKGQERAHWTGY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EC22D66D3
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:26 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id h5sf2902779edq.3
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629346; cv=pass;
        d=google.com; s=arc-20160816;
        b=o15T6AMAXeL2VNpWyFNRqmfp4iNkYQ25bQbMAzer9O4MNJOCU+J8XEcadeuzVuC+11
         RlmV1LnvotSroBbuJLgKeI6EgrlbCy5lT6PxeYNnaELdAiZOovHrMZh6W0WgTCD32Vw+
         WwTliUcqLjT8j6J5FwzuA+TL3E0Cd0BnV6uKCETMgibTtwoyA3gf2oCGwLEmYpTCo7WU
         fCcezOcYcMTTyybRUxmrQ/DmzVOLVPnR8NEvcYaRk5G1iCDbnjHlzfPb4QB60JNQT9mz
         ATlbrC8Z1Y/455rZColhLuAqFXdXA8Pn3KJskqyi2ufb9E59oEuUXDUV25gJn40UhCKf
         kz5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=yDf57HtYx5ePBsj2wsrIBqxYNY8DEKGZO+DNzyLvRTs=;
        b=tdd3g17ne+uJ8LiHkj28FDbJfzu/6d8YKchbk+GCKO1nsMr1CYRiklI+9+d4m4yyb7
         h/LZY41kKeySIolMl53hyGWb9p1CtRoZmX1UfPPkFG6cAG3qP8X4fxPrxslc+UEtKWRI
         19FYsuWkJwawVvVZln53nMZPBhsnJaZ2m/V48i81L6Uqw4GDGL8MuDN+qlN1Ts3eyKul
         dT0cdnUXBl8RO8nla+R7pDsJEjcBiPA7zJ/993advmbR7Vhk1VncvYPO+00d/YNYqljt
         UcvEJoVkwOlmiu43VyWshg0Je21RIGdgxzMRIn8kgU3qSt+il8Kye7xgjlVXYzQLm2ol
         vuGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="D/de10U4";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=uhk8uY0r;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yDf57HtYx5ePBsj2wsrIBqxYNY8DEKGZO+DNzyLvRTs=;
        b=QvddK1uYAZLSZc5IG9voZGpng6aVmRgfuOmXFEE3MH8bX3HtvcemLTGbzKHR3e2dFG
         XXctTyTR3eU9sqFWuuwozVfDmiHtbHWEFpM1EBvCZSN19CoHnEJX/u931PopubxvkZNx
         BqdbnLH2P1QaVCx2lWFn4OndxAGOZugh12QfV+3XrdOE3rXszBV3jMBxCToDVwMZhywY
         cG9Qw3Hrt5EXyzS7hQ5XjxBF2E9encuRqupTc9PgBXWTyYvYSKZbBhRCjuOtbG/Dl9wG
         NtDWJPCX+P4E4AtuWUerFcFRNtMkVvlISH3u7QSnmIlBBtkeDVhPMbIKGAlH8zD3qrzy
         7t+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yDf57HtYx5ePBsj2wsrIBqxYNY8DEKGZO+DNzyLvRTs=;
        b=XPz6tWHqssuxrRTMd7qmy+36eYj6SCoe78yhWhlbXvMSfI8yjcx2PhuO88fS5EyX5w
         NaR518Hl2A1mnyETU+piaGNuAgXK/UIVKXKZpgkw4uWt9/RbtbVy/0AlSOKHTIm5rfpF
         nFkE48nCbsptxwCSZodT69R7k4oFLto0wUT9YuoiQxFQsdGsN2+1yB239QXWgaM19zEL
         xYWhOVly/UA5QRWEq3CpbUy/u06e58U94qTZXhK0C6XL6MM/aj78MeVkcn5LIn1hsCXg
         yHPSgAsIZwNEU3jNesti2KgRL8gHeTA6hs0kBrqOtFgf1mFIKcILARmi6CvuREagusxo
         i1Gg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531SMcwPqwt54Fh2ST/W85CklscsrERyRbsEiK8zGf6lHyhVQntc
	E7z47O4n/S4Frs/PMZ2thDQ=
X-Google-Smtp-Source: ABdhPJx9wybzXcjN9hBHNMnN5gI2Y6phHDDvARuTgPuwf0t/STOI8moa3tbbJQVHGKGyP4QBmTsElQ==
X-Received: by 2002:a05:6402:1b1e:: with SMTP id by30mr8351185edb.75.1607629346190;
        Thu, 10 Dec 2020 11:42:26 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:cb9a:: with SMTP id mf26ls577191ejb.8.gmail; Thu, 10
 Dec 2020 11:42:25 -0800 (PST)
X-Received: by 2002:a17:906:d101:: with SMTP id b1mr8005575ejz.80.1607629345261;
        Thu, 10 Dec 2020 11:42:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629345; cv=none;
        d=google.com; s=arc-20160816;
        b=ujOKMoKtewBu4mYYUT1eQ5R7XdH/xON18MepHQAeskKY7vpsRcH8Ja84iQGyj9KeE0
         fJjBGltyniRMs+8Q472j/y9EMu+n/fFENwpCcfrxsm6G6dipkUWhvS4Ev88TXbKlSQR8
         5iU5Ts3jB/VYrd9LCr424cJMLOu1jLyKjYWMaTBlvxn9u78SW+NNmifPiViftOzdD4Tq
         yQTPT6Sd4K+LFFjWA4ysAWwys+83xIGuWjSlMuAvdAbO8EeVEbZADcWm5BEAyjk+Yg13
         Fb7039+5ZEQuWgPLR1M4GECrYLnMKEp11ewQvkKzjhc9TZdpdKvkNGfzRTY00EEj5v0V
         17Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=xI8ipC8kVjJGltjSHu5Mwub/dbA42XKOSuIg0xDxbuM=;
        b=RTsxyi3s4W+ZLWYtHj4xokPNb927HPNV3zx9SYic8Cu1LpnqjfxjLtN3Ox9KSzgpP5
         H0PEKphTqTfwvdW6XCBJVdg9zeCLnFB4a7oH95peo/12e3ZJbY5528eEbRqDy4fxu1d1
         3BzHMNbw/0Vs5M5m0CbUzw0QbBr8Bzh2q1qNryAJ8DynjoxvxMG9mzooWMDes8rzk1hU
         CnNROLQknYTm9y+77v16HEghUlTx636h+Suw8FKybNQlYuhBLVp/+4j4y2L6P+f4wjlZ
         YgYyczmtyhZclrepnCSvCRuVT4TlaVHt1BNmKEd4W97iZKfxg6/nGTtlnnEp2aw8F/Ab
         izKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="D/de10U4";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=uhk8uY0r;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id z13si196927ejb.1.2020.12.10.11.42.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:25 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194043.362094758@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:44 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 08/30] genirq: Provide kstat_irqdesc_cpu()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="D/de10U4";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=uhk8uY0r;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Most users of kstat_irqs_cpu() have the irq descriptor already. No point in
calling into the core code and looking it up once more.

Use it in per_cpu_count_show() to start with.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/irqdesc.h |    6 ++++++
 kernel/irq/irqdesc.c    |    4 ++--
 2 files changed, 8 insertions(+), 2 deletions(-)

--- a/include/linux/irqdesc.h
+++ b/include/linux/irqdesc.h
@@ -113,6 +113,12 @@ static inline void irq_unlock_sparse(voi
 extern struct irq_desc irq_desc[NR_IRQS];
 #endif
 
+static inline unsigned int irq_desc_kstat_cpu(struct irq_desc *desc,
+					      unsigned int cpu)
+{
+	return desc->kstat_irqs ? *per_cpu_ptr(desc->kstat_irqs, cpu) : 0;
+}
+
 static inline struct irq_desc *irq_data_to_desc(struct irq_data *data)
 {
 	return container_of(data->common, struct irq_desc, irq_common_data);
--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -147,12 +147,12 @@ static ssize_t per_cpu_count_show(struct
 				  struct kobj_attribute *attr, char *buf)
 {
 	struct irq_desc *desc = container_of(kobj, struct irq_desc, kobj);
-	int cpu, irq = desc->irq_data.irq;
 	ssize_t ret = 0;
 	char *p = "";
+	int cpu;
 
 	for_each_possible_cpu(cpu) {
-		unsigned int c = kstat_irqs_cpu(irq, cpu);
+		unsigned int c = irq_desc_kstat_cpu(desc, cpu);
 
 		ret += scnprintf(buf + ret, PAGE_SIZE - ret, "%s%u", p, c);
 		p = ",";

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.362094758%40linutronix.de.
