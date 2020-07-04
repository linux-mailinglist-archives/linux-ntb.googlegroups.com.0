Return-Path: <linux-ntb+bncBDV2D5O34IDRBC7X773QKGQE45HLNKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EF8214392
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:20 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id j5sf23950943lfc.15
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834379; cv=pass;
        d=google.com; s=arc-20160816;
        b=XaR/DlDxxhFnvVvwPvWKIbMENqRhttnQsXkmICCfUi9o0L/Cea230jwRB+kL1jXIsA
         IZBHK0CTeQPHVM68LlkwplA9693/g33D0mPYZnPm4kbU02lsDoLgPkDTqxeCiWPjfLsg
         0Uao7NN65NXUX0AuXJQnFa5XXc7UQ+VTRXShGLVHe+Xi6fraipyL0tzEu8oQUJbvXQF/
         UpYS1RiEl5WdUz5d69RBqAq8q8yfKxkqBvKymLRYU3tFk3ZBLOFDnlpY9qh9r04xK/4M
         6ucdZwA/Urmk/UxxojpqOQCp8OGXw9/HP8g7IqwwLQYgHwazb6vyjYedpvHnG6cGI4lO
         xhHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4KzXBkHOeDaTlYc5DSglqE377u3K8Se0Pb0AZRrHBUQ=;
        b=qcbco3lCUDXofVkiZON+uNqMBQMFy4Er+9ShQYgfinJqewPIjENABLh7S/3MwTlBap
         erfx4IeEGZMfnwWwjPmjWdu4fcpeHsUowV8RdLJJZimFFODZMX9+CPFdpagbsXUZPD0k
         YBnWW1hX666tB8pTItN+JdHOfWbJ+r0zAs+26sACscw99IKJOSDDOsPHJgrHvaOgnw/o
         hq3VTXR5gpt5otISrifghQaThF+nR5S4WWfVxVCdW41c8UdpoQDiUfmi+nizsnZlv07l
         Myi5xAentYxvqA8IV0W1mz2+EWxhwl7upEcSwACv1ZM3QARAZixQjyTe6Jl9nup/mBEx
         SvBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="NLw/zpYV";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4KzXBkHOeDaTlYc5DSglqE377u3K8Se0Pb0AZRrHBUQ=;
        b=YC5GQ1GZ+d0wUHf+AtLntro5yKGlnCn1FRPf8HKcOsUb7ofvHF72vlNWnkc6TzDU2C
         FG+1qgIChkcPy4vAIzMhoZ8b76phEn5tKbKAhMUU/VI+nVDslLBc44m+Ur++IPr/n+bX
         uKTneUQlWXIOhz8m/Ak1dS4ansFK7mzyzLvbSkP0Ad7dITmayqP92nrgSMslA1U5NFd4
         fN3TMQNZGFLDMRYqhkcxZCKgoKb4olPfaomwF238wAvrH1wgxLVL34+t23EvOsdshvxJ
         G/f/fLt5X+HoWMab3IyUr5H/ndB8/Gu5h6EXBIBwbGG2UhE/003XPqcvzzmBqcSOTeIy
         gT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4KzXBkHOeDaTlYc5DSglqE377u3K8Se0Pb0AZRrHBUQ=;
        b=Hwyr65qh9wN5+iwGaaeZIFWvX3r7P0AZOpwJ1B1KO6YWGEy2PndU5J9l9YCQy8Jcbc
         QD5H8JPjDACKWQIXnHsfHXG3I+ElzxyDtBdAQiYUGax/c6SfTfl6jpy6H0icx08cQWRG
         jOV1CDUmDZxBtIcYvaU5xLlI4KSaPcrI8gFB2Kgm2cDonz81LbFaAAb4RPgQVu42CI57
         V5YKchiJvhJyl+jqoXjDu/keL8TDABF3mp2GlliE+mDauXx1NQEzOuUFYL98K4zCzJLA
         V3X6MELCLWiLM7lI9dbolVy5fHtvW488axrrTfDsFWGD7WZadRVBiL2ELMF1Zv8f9u0q
         aJEw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533buBN26mmzqZiucHOQUORIJCvQQm6DWRpRbkHz7m5BF12crcMx
	GsUT+Vr2+QT6gXNVQ0rxFz8=
X-Google-Smtp-Source: ABdhPJwFNi5JORyM8o6RvN5bmKf7SzKbocUWJxTA6W97hSYPxI0SICdHQwSwzM5Gl2qy4r8qGOiyuA==
X-Received: by 2002:a19:90:: with SMTP id 138mr23901788lfa.100.1593834379720;
        Fri, 03 Jul 2020 20:46:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:be95:: with SMTP id o143ls413108lff.0.gmail; Fri, 03 Jul
 2020 20:46:19 -0700 (PDT)
X-Received: by 2002:ac2:5629:: with SMTP id b9mr23983389lff.208.1593834379097;
        Fri, 03 Jul 2020 20:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834379; cv=none;
        d=google.com; s=arc-20160816;
        b=Ec4daaBIHDGpdIHDG3xDBe9+Nk4nBSW35iC/OadNZzZ4N0FGerb9ajW2wcEAMRAMKU
         4ck/eh72z+8He4R0toNxmyc6sNwXHlitOI6CbmY6qrG/OsaNjzUh1MkfHdZ0yhDcU7LW
         FCE6KjINGdLNeDM5bXWpfq0lCLVr5TM4dZLk352F5Q/RyRuaSRCZEs8L8ihDsKCt2aWl
         AgpN5QKt+PR7qKdvAPElurk/OIkJM0J1bsP6dOLtKYDORhMepbwbLxgS+/wBM3ift8Yt
         86rUKIKEUQhgeNuMKqf9h3wgf91vF9Xt5VM0eqDjpo4QwE2hrhlA8V5jftz36PkzlaDG
         gSEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6EonKUvskMRhUPMN+Ghhg/8Utfl6KLu/Eki0DelHmZo=;
        b=bHqYC3YN+MvpKmHxS6wNu8lxm+0PtPXOG8g2BVQH7yadvF8XN6s9MKUreQqhd1IGpR
         JrgdPeH72oeN//wct4iIGjSr6uz0QRVursIVbr4Z8Q18PnKUVL7SIKei1o8KEBO7Eu5q
         lVVoHXiyqgMNmdDiAmbb16hRhWxfRhzJ94bQTb8q0438q449od0M/DAyJmQHTwopxRZ7
         yquSBxkcL2HB00MpgzuK9wU2OtPnzwl3PIpzxbDIpDrEO/JSgl199Ab3G4gLIugT0tvx
         U8g0/iijmN/McGRDWZT3YgvaKSyO8u4741Em+Td3mInhagjzPaUlDcehnHRJGlzdud9p
         h4dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="NLw/zpYV";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b13si464471lfc.1.2020.07.03.20.46.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:19 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ80-0001Xb-SC; Sat, 04 Jul 2020 03:46:13 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org,
	Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com,
	Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	linux-nvdimm@lists.01.org,
	linux-usb@vger.kernel.org,
	Eli Billauer <eli.billauer@gmail.com>
Subject: [PATCH 12/17] Documentation/driver-api: ntb: drop doubled word
Date: Fri,  3 Jul 2020 20:44:57 -0700
Message-Id: <20200704034502.17199-13-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="NLw/zpYV";
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

Drop the doubled word "with".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com
---
 Documentation/driver-api/ntb.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/ntb.rst
+++ linux-next-20200701/Documentation/driver-api/ntb.rst
@@ -9,7 +9,7 @@ registers and memory translation windows
 scratchpad and message registers. Scratchpad registers are read-and-writable
 registers that are accessible from either side of the device, so that peers can
 exchange a small amount of information at a fixed address. Message registers can
-be utilized for the same purpose. Additionally they are provided with with
+be utilized for the same purpose. Additionally they are provided with
 special status bits to make sure the information isn't rewritten by another
 peer. Doorbell registers provide a way for peers to send interrupt events.
 Memory windows allow translated read and write access to the peer memory.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-13-rdunlap%40infradead.org.
