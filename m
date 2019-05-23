Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBM56TTTQKGQEBO53QBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BBF28CF8
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:16 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id e88sf3536320ote.14
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650675; cv=pass;
        d=google.com; s=arc-20160816;
        b=E5AiAttq1sKM1Kcpf3SMR5r6Qckh9olIlSOsaousjt1eHJViPJ4tMtMMvhXSz7Rz/+
         lAJMqq0m+26zMlEw0dSyg2YkwvCjl0Xl2yZTiQ2nG/A2R0eJnu6Ysw6t5NTmmLmM/5fX
         S7Ed3hlHg/zGfL/gdntaBi4eiRVaOcPNTdEHLvHSYj8OA1/CSHndzWQfI9yCmpxjdlEg
         N6SUNb62lDOsLlRj/gjNzzLH0O/cfXDEjRmiVRi5Gm4zf32C/1cvj2wxKOhs6Z3xCvLC
         m4/N137czxOPG+fE3Qa+ojVmzjnenkxs6PcZTfmZrJdRaL0cKHLA9VK3N1ArvuNco2A2
         lDUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=AuaNYUZUGzJ/VuoYSK6YsQR6b9njh3/Pc4lmsVpinj4=;
        b=V9ply+vV0FwvbrWtPC3SEtARIPEoaK4XXsSwU6N/JNcwbgtdN18la8BjAdJMFsbqgQ
         Gw5E91rtW34uIvkdqi4rBiFsRiw3vaCgbHnOK5uhNeAOU+kUmvjXDlKhtUX4cMX+vP+4
         i4kPjfcz+i918hc9Ob253sxoumIbRjPtBnIPj1zKm6xIMUVMRR9D36LxbuxKp+WbMpK1
         U+2TkJyfL3EoazE6o+mHd/1tRgWu6Stdr2gg+AKvEUyymIDSghGnaf3WG5a5C0Rp0Gkr
         iqG5wPK9YXFMFs2aj9Bm1O4hHUyzwehG6SekAC3LfsGAqdnMHODku2eAnT8yvtBJrcNk
         SSSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AuaNYUZUGzJ/VuoYSK6YsQR6b9njh3/Pc4lmsVpinj4=;
        b=FCdXStVpRX2luuuIcpTHAullXBCjpfm9tRABftL2423wWARXyFs5i8IXDk8yB9q6tN
         R8AA3SQh9BsYkDIErvg+06zelItMlo0Jg88FU/wLe8m0+HeAddTbt5MjgNKVU4TkwFlN
         k/VHcLNHthls4U2Fi35SzMeLpOlRKibJH7+flaN2C2rSCZ87u9no+AIWU3PLCbsFHLXP
         HEyC/c7ixTFq5oNMUtI7/1CicglmIewo5lAAygbsA/jfRwd7uH0XQXi6c4EEnR82DWLW
         yWl50gBdBy7ukbPL/2thpDjOGGtQ/11DXvCYQwP9a9chCGfEuPiOYMuQU5868jL1QyEn
         STEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AuaNYUZUGzJ/VuoYSK6YsQR6b9njh3/Pc4lmsVpinj4=;
        b=VAKGpAI19UQD+Z3OmS5OIqcp7VpCf/Ch4q8gwONNbvYKPE1y2EaRlrPK8z4ZBVmtpI
         IZ0JRcvPCZncIus0UMsVh5aptcvlUDPmEmVO/k6jm64Y1hIwDylFhj07XY50aJ0ljB4g
         K2CWLNjhoSVXLwVP3LWqiW2SOGQxERgqAhsCwoBPmOpjzHrYzRcGoq5KofiU2aOAa2Pv
         HQQfdJerPrl3+iT7fNrImkNur8ud9jbjAJ8ovz2pNDUyBgh6NSuIrNSeIRlW6HklLRAE
         IAoSKLz6Ah1jssPJ5gXjFYjSU+Lwjjl4QjY5t3isc/J5kCfvadGhY9nyLGATOf0rE8+b
         /bWw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXO79Pqhe/y0dcM/8wDKKcNhvnJcV+aTahaGqzi6bIwhxXheBaI
	71fMAKKTO53E3P026t2s8Hs=
X-Google-Smtp-Source: APXvYqwJdsXlKwzxf118ZeTNd1ODAwvKkD8dia+S0ttF0gN32LfgiiQewsVMYjpxDHr0H91UYwAZSg==
X-Received: by 2002:a9d:7b46:: with SMTP id f6mr227055oto.324.1558650675368;
        Thu, 23 May 2019 15:31:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:302:: with SMTP id 2ls1175002oid.4.gmail; Thu, 23 May
 2019 15:31:15 -0700 (PDT)
X-Received: by 2002:aca:52d1:: with SMTP id g200mr4428800oib.1.1558650675045;
        Thu, 23 May 2019 15:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650675; cv=none;
        d=google.com; s=arc-20160816;
        b=i4NdHj+cvApW0EWmt2KQpukRj4g3WnxDGCpdoM5KWk4KsoZT0nPQ206wBZQ90ZeLlK
         82h29k55dVoxwPUI8gyP86/Ain+Zfo8V8QXSzm2ux+50LcTb6UPF9KF6Vi99phnNF2vm
         jw6kuw8O4CXXW+JyF9fkbaWD3GkfMLxtPp9QyvuxFYG9hHhtEDCUbEVXcd/dpGeCUpzZ
         WdQ4hgZNwtVCC2x8wluT287cflTP884z7vhEm+v1xURo2LQEPYop2Z45IFMb+HXBqv+7
         795RteG6IjekFSXOWd9me/kCcX5xfIj273cuIbX9Z8JyFiJBKBYahHz1nAiy1MzLQScc
         q3xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=pYbWxQ1Ttq+XYbZHEsrH77MuzZUDWgqUxd70vw9q96U=;
        b=leEvrD/9/x86l6aWcjdzt3kMudA13kh0JqdMSWNWDdUVsscbfoO48ftP7F7n93IcJ2
         0qj5am/Qr3Zu/AeJy9IajngOU/W2RZDoSauFL/tyHp/ZGIX4v1tlNiQ7A00efwCNNGom
         fz729G203pxaihwa81WoAE+s8OWyenHWUUGnVw9/z6fDwdgXmCWbL40uBNLKNgF7Q1KT
         oUBBWetlX2iGYhKmG26Xll4PTK8RqW2dLPYigLeyLI9cjxoDprRPtZWpKN3agDxVgRAU
         mzmbTp4XG/8FS/+R21FVlRhUM6YVBxB+CGm3JYh/H9AsCOuKDZwgBHhZvGZAKwSwE9aM
         zUvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id e23si74546otr.0.2019.05.23.15.31.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEv-00062W-R4; Thu, 23 May 2019 16:31:13 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEq-0001ST-L6; Thu, 23 May 2019 16:31:04 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org,
	iommu@lists.linux-foundation.org,
	linux-kselftest@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Joerg Roedel <joro@8bytes.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Eric Pilmore <epilmore@gigaio.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Thu, 23 May 2019 16:31:00 -0600
Message-Id: <20190523223100.5526-11-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523223100.5526-1-logang@deltatee.com>
References: <20190523223100.5526-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org, jdmason@kudzu.us, joro@8bytes.org, bhelgaas@google.com, dave.jiang@intel.com, allenbh@gmail.com, fancer.lancer@gmail.com, epilmore@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 10/10] NTB: Describe the ntb_msi_test client in the documentation.
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=gunthorp@deltatee.com
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

Add a blurb in Documentation/ntb.txt to describe the ntb_msi_test tool's
debugfs interface. Similar to the (out of date) ntb_tool description.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 Documentation/ntb.txt | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/ntb.txt b/Documentation/ntb.txt
index a043854d28df..802a539f1592 100644
--- a/Documentation/ntb.txt
+++ b/Documentation/ntb.txt
@@ -194,6 +194,33 @@ Debugfs Files:
 	This file is used to read and write peer scratchpads.  See
 	*spad* for details.
 
+NTB MSI Test Client (ntb\_msi\_test)
+------------------------------------
+
+The MSI test client serves to test and debug the MSI library which
+allows for passing MSI interrupts across NTB memory windows. The
+test client is interacted with through the debugfs filesystem:
+
+* *debugfs*/ntb\_tool/*hw*/
+	A directory in debugfs will be created for each
+	NTB device probed by the tool.  This directory is shortened to *hw*
+	below.
+* *hw*/port
+	This file describes the local port number
+* *hw*/irq*_occurrences
+	One occurrences file exists for each interrupt and, when read,
+	returns the number of times the interrupt has been triggered.
+* *hw*/peer*/port
+	This file describes the port number for each peer
+* *hw*/peer*/count
+	This file describes the number of interrupts that can be
+	triggered on each peer
+* *hw*/peer*/trigger
+	Writing an interrupt number (any number less than the value
+	specified in count) will trigger the interrupt on the
+	specified peer. That peer's interrupt's occurrence file
+	should be incremented.
+
 NTB Hardware Drivers
 ====================
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-11-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
