Return-Path: <linux-ntb+bncBDAMN6NI5EERBQMRQ2GQMGQE6HFSRVQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1744345F989
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:19 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id m23-20020a05683023b700b0055c8a2dcca0sf5098684ots.6
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976257; cv=pass;
        d=google.com; s=arc-20160816;
        b=noZdWCm8PeyjFDW6THLGv0/uzUNZYBNJGIRT4Vu7idSiXbBrZ0wTT5hRB+ilOnBVsj
         Ge4Bm0qYIptR0M6viaTaxOl6gz7fyuDUuOncdhsV5a/5bRStD+uc51EzlRQh4GTPHClF
         BVT3o1kSqm5mv1ZmY1gXx+H2Q5CxTpYOOwdTSYeWiJE9sR2EJT4MvcCIjsoQaJQMFWNF
         Lsu2Z6IehW7eNkxtYjt4QkW33NdWf2l2R3DEunFwslaeRc+hRU3keyC4qIIfEeSTv8rj
         pMYnzzqEuDXp330kUSEe8Fs9OJh2Q1I0/Y5L3FBkmKsom4+gRRPfGnIMNUDpSgPLI8kN
         4cvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=AOrCqdbSiRmIdwDsET72X7pxGQHH2eu0Nt1Z3LarLVo=;
        b=cGmbKfO4tZPFaYbLDYqEpACLoZsy40IHZRkrlDcY/TdNecCR9XOA+kTayVHi786Ias
         nZo0slYK3fJC3Dkd0E+wsu+9G818xxD03jUrZNxGwvGPgeqwJAfdcdqWxvJaLCZFljmL
         iSaYGKiZ5gse3jBi73mha4VXu9EeFK1zyGpyuOPFJwPYzfMz9WGpKxf2iVKCMjv6uR4I
         y8X3tLtBsMCdUyKB3NlfRAFR3WVjbyUL0KD5yCySpJD9H/s7w1mbE5L4QYGMb5fvWgqt
         oKCkkVRpyoHOl3UC0i2GiGvCGogzybSa0QMWb0rQ7doQHUByn/t2yguBquzJ/zzbx5zO
         PsEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="kgiaq1X/";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOrCqdbSiRmIdwDsET72X7pxGQHH2eu0Nt1Z3LarLVo=;
        b=XXoSZfH6IfncXRkBIFqBejgPGszS1ryu995OOcHyvIahwQCl+KItpu1XmSFBsdF4Wr
         I179GEY2AL06vtCYUiEINefoo4w2XUGUJP/TaAqUV1AgY/RotUbRYicaq11QtXgTfOLG
         dZ5O9CQI3qUMfhnZe5vORLrDndggTezvYIY4Wp9fFgQ2o1MelJZzB+gN+avkp6DksFNu
         f1tvXlAhtkdkiyyFq4IFmawVY6Bf6muXxGWgUX67oCgEBabPPeO33qZc1epBve6cHttG
         4i0IYJhTS+lTHIfmRtI4dKYYiOBrAPlwxKVANFNqlgTod+Kyht40PyGGJxoXDwEWu+nG
         aU8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOrCqdbSiRmIdwDsET72X7pxGQHH2eu0Nt1Z3LarLVo=;
        b=bj1tNwf3249Uv2rZnOEmgpg6XRHPk2OD6FBSDg0ykU+OEeHza7b6+vpZypFKhT1OoV
         Dy5g9I20Pw/f5oA+AITiSvDCka8kwE+yNusmt00ahL+IXcrJks5EG1QNdcrMxS3vNGOn
         S/c6bI1FLnGKUnNGN3TaYWcFX0kgkB+YV/ahQ+HaqJ+SQNwucnPpBGBRgn2uv5UJ6gFD
         hE1PC2HSd30C8y+4g7Td1u+1SXzArAZMmTg0NiK/HoRiFGr//7jtbN8suXRp41oc1Ci3
         7fIxhWOIRBucduObw8F/6MJir8aHy0+SNmrV9crPph8vJyYorACuk0Gk+0Gunjyx8dd8
         p3jw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531JM0S4k6fQX/yEYvBGe7LLe93b9NrnXo/FPSs0DWbGYCMkHzge
	q2jmJ7SSwyH6V67Qdz33iX4=
X-Google-Smtp-Source: ABdhPJz4JL5TFSxUe+Mhi1OnU55m9/0IJ7rgg6YVw/P5F9G38S5ut6PfCREq/ii1U+K9I3P+sCoHcA==
X-Received: by 2002:a9d:490c:: with SMTP id e12mr27527319otf.90.1637976257859;
        Fri, 26 Nov 2021 17:24:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:90c:: with SMTP id v12ls2643243ott.2.gmail; Fri, 26
 Nov 2021 17:24:17 -0800 (PST)
X-Received: by 2002:a9d:6e0d:: with SMTP id e13mr32586806otr.10.1637976257569;
        Fri, 26 Nov 2021 17:24:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976257; cv=none;
        d=google.com; s=arc-20160816;
        b=IieZXJENGOLVaEuj41/iOt5RrUQU7D8QcX+16UJ8rj03joH75ynIZtiy5jUqg2FmSE
         JfR8OYN9eIElf9bVPFPslJtA1+xuKBfCx4t1lzcAd2OVWA9Rl+rpwFhVrvegtWicQoKF
         fOnpHK9wFxNMNqK4HMAKINh7n8Im0vhA41jDpJmu+4X+UzImIIx7VJxMA/HIBRUKa8RY
         +wpekJxmgSALLTxQzoZceMsJo0P1Y5MCdbvcgFpLs8iE0frSR7NRgYGOF1dld6VHrHD1
         CSFhp6Y5KkI11gbx5q5cnrylk8Pu2cwlEe+2vFTJU6oIdwhsm7eDktKbUu43rz+s0cp8
         Jqwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=GK9xXtkPz9vBMqHoE5to0KtmwhYh1wJX9NGwNpFpD14=;
        b=KvEXBmTjI8/esTuRzYnK3+4rKxbeysfisKtYVe4K3g/eNw+wKOlItvN+kxt5QjDJSy
         nrcyHHhR2NAL4oIfSFeATYF+BBeq6rwLxAWIEqjR7Ej0D9NPZZPhdNPo+AKSkDtrcID+
         wHJEUC32FGwA/1okitatyv4Qx3jI5N8q9pIJOTVSalUxC2RobwfvLWYRgucxwBHtC5U/
         8gu6nn6Z6tViiMJ7LDnCz6ZcJ+uqfLMN/S0xifhpUwbXH5gauXPtY254RF/wJwF6sPyy
         c+rYXnfAFnDCjz5a5YJ5E4rgp6iZU7I80ZcLHOD5DUPT0L1ye0rr5RNHnXNisq29oglA
         EZpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="kgiaq1X/";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id e20si750052otj.1.2021.11.26.17.24.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:17 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232736.079074688@linutronix.de>
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch 30/32] genirq/msi: Add abuse prevention comment to msi header
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:15 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="kgiaq1X/";       dkim=neutral
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

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |   14 ++++++++++++++
 1 file changed, 14 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -2,6 +2,20 @@
 #ifndef LINUX_MSI_H
 #define LINUX_MSI_H
 
+/*
+ * This header file contains MSI data structures and functions which are
+ * only relevant for:
+ *	- Interrupt core code
+ *	- PCI/MSI core code
+ *	- MSI interrupt domain implementations
+ *	- IOMMU, low level VFIO, NTB and other justified exceptions
+ *	  dealing with low level MSI details.
+ *
+ * Regular device drivers have no business with any of these functions and
+ * especially storing MSI descriptor pointers in random code is considered
+ * abuse. The only function which is relevant for drivers is msi_get_virq().
+ */
+
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/list.h>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232736.079074688%40linutronix.de.
