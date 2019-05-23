Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBMF6TTTQKGQESJCRVMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3560528CF4
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:14 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id g11sf5250598pfq.7
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650672; cv=pass;
        d=google.com; s=arc-20160816;
        b=k3/1JmRsiZETp0zcKiKzCs98yZ2tjxLGegTNWvNGSpbE9Am6pOq/TDyAR70l3JEmBj
         9bZ7mryaqP921otNhal/a6qm5NmqcTHwyNbEEMyrFUE6rJ9w7UQ0ALaB2Ddu9X4GT4WX
         Qfv2xK1uNyEbxf2bdD9ZdQs1oRjn3nuoIAoGJM8wAN7dWRdGuIaShAGX8CEGAnwOg+CF
         nCSXuvjV4AuWmqXWleqtTcEewwhdky0CHGmyMFVBYnn1t9dwfYx6nUcNhWrhLa0D4Aq6
         jW2Zh1sQ/VTBGntK1WUUpZi+inA4OcKfg+sJ9nBqTDKb2jkh+s6nU4b6uYTbQGy0+JBt
         1/tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=OTwmi6EOSmSlnE6DA2YXrxhG94UIgdFYGMaRi8ID7wE=;
        b=yNys1OZtumNmdo+1Rm/wWK4d4MzaJt/yF2f12RgEnk2PXZiZp11S69DeJdpibpwSBd
         luFhlGrHmvo0C9Ll0I1LvenpvXtyFF56i7k8GkdE8OinxVGEeY1DReX1bkdWiNpnfcIR
         p5J1+fOe+0eronH2bLLXTKkDwjWfg4RdCddWiLFSbH+b4bsYBu6J5Bf16mNBtEztAHBN
         4ay3geKPdewOi0ziv89SrEv/cU54XI6fAg0QSm1Io5p8riPKhtXBAVF8Zpyzq0omsJhZ
         nUyTzSveeMEFjls2Pb0ZF5BcVGVq09ttK+tGFqbqSybqVKlpC9CVOMEz3aif7JsxBywH
         Q6lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OTwmi6EOSmSlnE6DA2YXrxhG94UIgdFYGMaRi8ID7wE=;
        b=teVKqeGp7ChkmN4wfAX7y0TlUfusWc7QmHL9/QobW14HREIkJIZWYso1NZMYbkViHd
         xwjLUfEnoZ6wpWUuos3mPOO6aS3D272xZ1TaRvTEgSRYNS6c2IVY1JMzDgy/dkYGfn2A
         hXa5YvMYCoja813bJZMOAw7qhupzrQZWXrMGvah8sbYf1Kl5SrCWD/dVXNSEj1aF0bS4
         Or2q5/aP/xXbHzYbNjKxOl/XKvqMJJt5L39tXkw/V2FKEAwbpgtJfYzrs7qjYRBacC9J
         Cx0a/VCiSm2jFyWYPpq2+/gczxVq6BITVNBBHZCpOnkOgG5pL0EJyPhbQqMEjLXnCAsl
         mCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OTwmi6EOSmSlnE6DA2YXrxhG94UIgdFYGMaRi8ID7wE=;
        b=V4pLc+dMaLDm6kjvTZzQyMBwNsoCelZePnimdn8mbFgY+aYuZ0kUmnNTTvoMFZrazt
         Y8razHYrsKWxJV4xFTuVySWQ0G3smIBBiUyRD7Tb+Fdu94O6XJkslMWY3sjYbTseBQGB
         KbenQGKYP3ss10Pw55prfjgtbr2M/3+Z4kvLze267dXouz/ibrR+JtyGSniZDUsqzB5a
         GScmUIOH9KsWKhXK6Uo29xWh3/2MWTUdt43fCSkq/9QGzWfoeFUHDGxn2A13BKD7JJ+n
         cauHvxKZjsCbn5U1eg+ND9EnugmVQQUwoZYfJOi3NaXgZ5C7QNbPF/Du7E3n/D+xzG/A
         GvPg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXC+ze/KfftA4CtIz7MxTPerEJ1nwvpwmzpYTYU/aAnSgVDHayt
	zuu6LePnTfvaaNyTTX+l2zw=
X-Google-Smtp-Source: APXvYqz5AagldZ+I9wCA59hF2+ryEsg+tK8WT/puJmuYiqP5+1lyCZU+0HRmhQmMTe4oJJoGtfO4/g==
X-Received: by 2002:a62:62c1:: with SMTP id w184mr106196189pfb.95.1558650672606;
        Thu, 23 May 2019 15:31:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:aa05:: with SMTP id be5ls1812770plb.6.gmail; Thu, 23
 May 2019 15:31:10 -0700 (PDT)
X-Received: by 2002:a17:902:bc8a:: with SMTP id bb10mr2170880plb.310.1558650670583;
        Thu, 23 May 2019 15:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650670; cv=none;
        d=google.com; s=arc-20160816;
        b=RFQ4buUcSXxdzsiSaWP7LmGsapCLiwHfkLwzrlPPnuU04V7lctdb0XarJeoMm6JjdB
         o8/iwv1PTsUirzAXwze6ynDVaBABx3GkA5WRu233syshUFMusoEQGaQsAyl/0utDf8WC
         xRds9usTTaMrw+6xmWJe2wWFYYGzjjv46oVPVEFxpapkKai+7CP8InzQePgXJjXCtcBq
         PXK8wyjllAsi2vvfaF1dQRTzSojJ4GOxUYyo1XWtv7W4JZlXtioJRSB+iC671Wk5M/nI
         /9ho/GQwtsqucTWC6QUNBkLlZvKrgEMBGFr5ImOPrj8f5Mdd7m8pp4t4aftFqJKeqQ2l
         XGlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=yfJ3SFMDnF7P4fDhcAS3u6AmB+q7XD5CFVD4MiA6Fok=;
        b=fZFxQFB9336md+jTKGIfWPg+sPDRYIHpmICR7XGvGZdCs+KQ6BEn1uevA63WPqkpft
         8hhRp0GBtjIjhxxx1Leapu7DpdZg/jOAkgvTGzVnCSidTpWhvFPwzZs3LUUgSTwcOBdF
         ahNfXDt6+OVFdZnD30Z2gPfQXRYfHAYkTFjklrtjKw/TxmJevRbjqqQETz+crOoanDRT
         i1BSpnn7gOFOtHSOr3RV21XiViTVWJn2urorH1VDMGnSzLTlJop2b5KwM4S2+o83MP/4
         GLelBc4hPUYkQGhUcDBVV4wY/MltUbmZ6/W4bQtKo+5a8S8c+zRKtbX+4KclmhK/AXub
         h6QQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id n93si66476pjc.2.2019.05.23.15.31.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062P-Ev; Thu, 23 May 2019 16:31:09 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEp-0001S8-Tc; Thu, 23 May 2019 16:31:03 -0600
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
Date: Thu, 23 May 2019 16:30:53 -0600
Message-Id: <20190523223100.5526-4-logang@deltatee.com>
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
Subject: [PATCH v5 03/10] NTB: Introduce helper functions to calculate logical port number
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

This patch introduces the "Logical Port Number" which is similar to the
"Port Number" in that it enumerates the ports in the system.

The original (or Physical) "Port Number" can be any number used by the
hardware to uniquely identify a port in the system. The "Logical Port
Number" enumerates all ports in the system from 0 to the number of
ports minus one.

For example a system with 5 ports might have the following port numbers
which would be enumerated thusly:

Port Number:           1  2  5  7  116
Logical Port Number:   0  1  2  3  4

The logical port number is useful when calculating which resources
to use for which peers. So we thus define two helper functions:
ntb_logical_port_number() and ntb_peer_logical_port_number() which
provide the "Logical Port Number" for the local port and any peer
respectively.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
Cc: Serge Semin <fancer.lancer@gmail.com>
---
 include/linux/ntb.h | 53 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/include/linux/ntb.h b/include/linux/ntb.h
index 56a92e3ae3ae..91cf492b16a0 100644
--- a/include/linux/ntb.h
+++ b/include/linux/ntb.h
@@ -616,7 +616,6 @@ static inline int ntb_port_number(struct ntb_dev *ntb)
 
 	return ntb->ops->port_number(ntb);
 }
-
 /**
  * ntb_peer_port_count() - get the number of peer device ports
  * @ntb:	NTB device context.
@@ -653,6 +652,58 @@ static inline int ntb_peer_port_number(struct ntb_dev *ntb, int pidx)
 	return ntb->ops->peer_port_number(ntb, pidx);
 }
 
+/**
+ * ntb_logical_port_number() - get the logical port number of the local port
+ * @ntb:	NTB device context.
+ *
+ * The Logical Port Number is defined to be a unique number for each
+ * port starting from zero through to the number of ports minus one.
+ * This is in contrast to the Port Number where each port can be assigned
+ * any unique physical number by the hardware.
+ *
+ * The logical port number is useful for calculating the resource indexes
+ * used by peers.
+ *
+ * Return: the logical port number or negative value indicating an error
+ */
+static inline int ntb_logical_port_number(struct ntb_dev *ntb)
+{
+	int lport = ntb_port_number(ntb);
+	int pidx;
+
+	if (lport < 0)
+		return lport;
+
+	for (pidx = 0; pidx < ntb_peer_port_count(ntb); pidx++)
+		if (lport <= ntb_peer_port_number(ntb, pidx))
+			return pidx;
+
+	return pidx;
+}
+
+/**
+ * ntb_peer_logical_port_number() - get the logical peer port by given index
+ * @ntb:	NTB device context.
+ * @pidx:	Peer port index.
+ *
+ * The Logical Port Number is defined to be a unique number for each
+ * port starting from zero through to the number of ports minus one.
+ * This is in contrast to the Port Number where each port can be assigned
+ * any unique physical number by the hardware.
+ *
+ * The logical port number is useful for calculating the resource indexes
+ * used by peers.
+ *
+ * Return: the peer's logical port number or negative value indicating an error
+ */
+static inline int ntb_peer_logical_port_number(struct ntb_dev *ntb, int pidx)
+{
+	if (ntb_peer_port_number(ntb, pidx) < ntb_port_number(ntb))
+		return pidx;
+	else
+		return pidx + 1;
+}
+
 /**
  * ntb_peer_port_idx() - get the peer device port index by given port number
  * @ntb:	NTB device context.
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-4-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
