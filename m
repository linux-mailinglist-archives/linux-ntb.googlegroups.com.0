Return-Path: <linux-ntb+bncBDAMN6NI5EERBIHO6GHAMGQE5NIDI6Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B9C489EDE
	for <lists+linux-ntb@lfdr.de>; Mon, 10 Jan 2022 19:12:49 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id b7-20020ac25e87000000b0042ce6d38b71sf2175287lfq.10
        for <lists+linux-ntb@lfdr.de>; Mon, 10 Jan 2022 10:12:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641838369; cv=pass;
        d=google.com; s=arc-20160816;
        b=JFgbB2fyBUMEHnvHTJgqna/QPOK+OWAzp6HUKz3o2axHGGOxpq001NZVH3T5Lo2yIN
         uSh41CJP5m6somVs0uLFVaAFDutHxylOdmlfbuWn1o0O/J9xF2uM9RovKBCsPmczaWYL
         i0n7Vw6Vav8B6Bm/GNjm4y7fbqdYRWva174Y1XYLxXf7E9E6AjEUWgagfmwtc1WVQY46
         t2EDMi4P5ODIE777auBfJa+A8FjTmYFxJOd3T8DffnSEBp4791gwXH4sMfJsmE5B+pgw
         m4yD+WbeJ3NLSJ1JplubJzai7RJ5FsQ9UpZa7Sja4xq3X+rYVGA6Fg8WX6nd+ujcHNjE
         R5aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=qTcgkeSQo7bhk0HOS5MOMgfEG8JJgGg5PBmqY2SOLmI=;
        b=up77cpSyVcXOETwo7hNEdxNCQ9MozpZQN0tZzbzVrR9VNGS9Q8KgfecdnjshxYSfkN
         tlq2t+hu80FNVyMRMFkuCwrG8CfC81fjp4hTrxn8YC1Kt+HFuWJ4im7D2mqk4ryrtFhd
         +rCbVrCsDKSkZ9E6jHt/oZ+hvw5vdFh7i0OQS74hb/x4xive6QF+TnV3Dk/+Rca+09hT
         ft3xVnh6D4kHg+abZvTxsPk9rbtQ0541n4MgfXag4aJk5U3IB6fsbDDvIlca6qnccsWz
         1fhpjQ1QP5Q6Atm1oOckKiAR7DvRvw3M5etDmzq74fSJX1+1aqZB+qqxPEnpbOGAAl3T
         IycQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wg+0jYPk;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTcgkeSQo7bhk0HOS5MOMgfEG8JJgGg5PBmqY2SOLmI=;
        b=FHiNMRCXO4B+RaPELUq9pXNmj5HMELwLSfUwFZWXp3Z2wucxF+opB0Ghj6C8/P+C7G
         wilW5PAyZ4rK52TJ1lP1iP0glMJXToUP/FREDZJpX77ipW3oaf1544s2LLrxQfx8wqWa
         /C5vlMsERrSf1qqD6iXu9befvQ2ZAfipCyCmjXI6EjlpFlrF1MpXzRODceCLisLmRNRG
         BRxEWVeT9+13z1llAf28MBvvW/LLP7cwxJK7xolxQ1A1mLFgKOp/02HKAXJo7VEvXtcx
         rHLQd+GRlniTo8WdiVYakGqnX3sDOIz5l+wRBQZeSsMfpXAxwWi0Jb5q1XOEb8f6+5ms
         24/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTcgkeSQo7bhk0HOS5MOMgfEG8JJgGg5PBmqY2SOLmI=;
        b=LtdXYJIBdxULhkfPzZ3wJZ9qQftkWVOvy5+wPn22b1ijutlhubaJ+Dsp4WUxkXfdcQ
         VSoF2oG2sTm1wySVFHYeH2MvSVgWeeg/ErBemSOSYaHDR+H82sEwvaeGjHBTPkORNWLR
         rlv75S+0okeilZXyHpl2B/jPUnyuP5N/Xysk+gfHAAFHzN9jvT12/FE4smA5OevgJsSJ
         q9ekuvh8ri8/LFHBixoVL84Xy1XZ98kZN+fV04FuYSgj9OaPghKETcg253fJzRkz1HOV
         0GXeK3CLxa17+RIvGnPRUtEo4NRRk/pAP7globd8Ueki+Tuq0AqMji9FpxUxEhk2RMlH
         djzw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533tY71b+NL2FGqFiaw605WQzn7QvcEKx/oalFQX7Jzr+jxUu+7x
	Q+e9VYqlEbVZV4uRfTQf2co=
X-Google-Smtp-Source: ABdhPJzmnhYa7CphrXZc7S57WZ7ULx9KMvgUu0TKM9wLLc12Kq6/m7gmrE89VtbCjMAc9i5zdSaJDw==
X-Received: by 2002:a05:6512:3b24:: with SMTP id f36mr651827lfv.545.1641838368864;
        Mon, 10 Jan 2022 10:12:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:a0b:: with SMTP id k11ls1865964ljq.6.gmail; Mon, 10
 Jan 2022 10:12:47 -0800 (PST)
X-Received: by 2002:a2e:4b12:: with SMTP id y18mr447358lja.303.1641838367635;
        Mon, 10 Jan 2022 10:12:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641838367; cv=none;
        d=google.com; s=arc-20160816;
        b=T5x/P9Eu/zUv9QUCjZPNDsraMoiispTfa8AXOMk77dFhnevM8nU93Ftzkme9npOxnk
         0pwA6gDIRpG8h3ZrjPCQSNcvYU+632sK6ouvNxPHce+rosyUD7gt++fNAbg1hQuvPIGp
         VTGyXnj3UCmYJz6guB1Qo9bC5iI3w8P8gUNt/gsMQEhO8sqNx5W0ieJxkL/brrITPeIX
         E7AjrFOq/fOtk2AELMX+UyMq/1p5G/LooSHRmbV9D1BZfv4ziIwne8SMsEL7nXmoO2Ba
         I7WNu2zhy+KepDE5KUOBs7Ygl9oBtFQRrBb4gilZ1Ix9WC9a1zwAqiFip1ga8GvR/ZsR
         pA9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=2zo1GoaegfwLq8ByWLgrCdt6kQL15RfNmR27qdFkCXs=;
        b=XQqQrqiwWjSu4jjr3jMFXZsg8nFH5CwepdT5GWHBAFlXM6NM1bn7GVGWiBYUe9slVv
         5ETnzsxhBhRgHG7PoXGB/BG36yV2rvUw3uOM0BA328Nc9OW9REOuU2S+dloGV2boWkUl
         h09vy23iohDViCDlEXynxDx2vBjtLAVfEc2n6zTkDn6j+KYGkacHanN1YF6vKfAKICIX
         TDHHs0dsDTa0Lvo8cgeFP3Zk27GhqwwM0Ci4YFaKkPXi0WaDwdbosCjurWYgz6Vf/0og
         mGYm+tFIwaJy/Y8hNZy7bZBK1QQjUziFg2f8fcYUYDFoTFFwvODVmo89QaZgRWduF9ME
         70pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wg+0jYPk;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id f31si340699lfv.11.2022.01.10.10.12.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jan 2022 10:12:47 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian
 <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>, Megha Dey
 <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org, Juergen Gross <jgross@suse.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Niklas Schnelle
 <schnelle@linux.ibm.com>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Logan
 Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch] genirq/msi: Populate sysfs entry only once
In-Reply-To: <20211206210749.224917330@linutronix.de>
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.224917330@linutronix.de>
Date: Mon, 10 Jan 2022 19:12:45 +0100
Message-ID: <87leznqx2a.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=wg+0jYPk;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

The MSI entries for multi-MSI are populated en bloc for the MSI descriptor,
but the current code invokes the population inside the per interrupt loop
which triggers a warning in the sysfs code and causes the interrupt
allocation to fail.

Move it outside of the loop so it works correctly for single and multi-MSI.

Fixes: bf5e758f02fc ("genirq/msi: Simplify sysfs handling")
Reported-by: Borislav Petkov <bp@alien8.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 kernel/irq/msi.c |   11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -887,12 +887,11 @@ int __msi_domain_alloc_irqs(struct irq_d
 			ret = msi_init_virq(domain, virq + i, vflags);
 			if (ret)
 				return ret;
-
-			if (info->flags & MSI_FLAG_DEV_SYSFS) {
-				ret = msi_sysfs_populate_desc(dev, desc);
-				if (ret)
-					return ret;
-			}
+		}
+		if (info->flags & MSI_FLAG_DEV_SYSFS) {
+			ret = msi_sysfs_populate_desc(dev, desc);
+			if (ret)
+				return ret;
 		}
 		allocated++;
 	}

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87leznqx2a.ffs%40tglx.
