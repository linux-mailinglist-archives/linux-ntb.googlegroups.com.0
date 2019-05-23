Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBMF6TTTQKGQESJCRVMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AC428CF1
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:13 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id 93sf4422896plf.14
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650672; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZezSJxn2RNDKVZvq3fSSxjEDHV23a6ADZmbWlXgAFuXpbc3/20SYUbsIhN9YUtbmF
         yZ6RRJavIOSH0QeTXET5lL5NGTT7cs7YWrn0shUfv4FyOxZHejNH75UuFuX63dy//48a
         uMlMZez904UhWrvwES8XcWIz55Om4daxAFhtYIqNQYZ5438cHMVPPhSvbR/BjskV5SO2
         nam1sHqnRg9/ICqzk8hzVA21E8vslLKgUahodta5jnyD5HLTp1cFb+QXiauK5+e8hRmf
         SEzyWesnDijAjaZ6OyW8seRI7Qf+wg/BU/pqOL00mUQrctDPTJVcwKtGViRmJZygTUit
         lorg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=cDOQRruIY21u1I34OTaxbSzdFXsYg1JModNgNh9qNRw=;
        b=CdmHNK7jQynCiWRnbxSBfP3f3TT1FshrqPMWZCANrflbZ2UpURT2YCYuEX1M2eAXWx
         Et21YB4I78+0D5BDFMSot1wpgAIxVdh9Lb/tMs9SUrFG1PDZ84IY6hX85rAJMiXn7pIn
         RlwkBTGM5bbRugJNQHOqlags2zjIhwhAD/Rw9xwv/5cx+1NGGTTXJEdwdsuWpDFprE3s
         3RucaDqb/wXnxMEDq/xs1A+ep9TUGfrEDuJuoPmZzOrqyo0/Bb75JUz86pRq1gJjADoV
         wSj9PlqXqEBSeeBivxDxNMRwU6lG5TIdgdgLp+JrBvXCYLRqvUJYzZRF98NgwPAIN5kj
         j7FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cDOQRruIY21u1I34OTaxbSzdFXsYg1JModNgNh9qNRw=;
        b=D4GmUzU8OmJvSntfZufK9PAVZ6waDtQjkfMvm/4JNFxL9G4odbeCJZb3wU7kcAqhbb
         Y3Oly5g/RVv0ZpN/5fWCvTXl46Oly0NLBLrSD3L5kaUeQg2idEsuiPxawqbnNN8yXHBs
         CYqEyus15iW+dngF4ynyv5II9Sv1PM/YMBONn27aV+PuFjza3g3PrK/fYU2w6yX4lTnB
         vv3aZzxAUfsVPfPTKo5M8uT6DxpvVskdA8QgGsbgC4l48loDQstPWhdXk5JsZ0KdTx1z
         OlxU4a5earmCrzJj5yaNb+sfJ4s5nEYMOVwpw9+T3LNQuo45P/em+eV8lkxhnAghVTF9
         q7zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cDOQRruIY21u1I34OTaxbSzdFXsYg1JModNgNh9qNRw=;
        b=JpHAY5Yuw/v07Myq6ADsEwaoaotziTHYj4EHe3QghuPoZASEO4TBxenfYkBs+4DV1+
         ILK1M/vltDjG9jUWmIKAwYlbTCojqEg2+2jE89UnZa+5A7pxvw/+Q+DqLbDNeReIUXO6
         55MMdgWsiRz5Btr5bwhLT4A/ZR0+TKuTfKiGwCNJcozN9U2Ymkv/wM5II7WeAH5WNopE
         8kbMMdz/yqsEcDlRZIT/cD6yqfjzsRHOfUW9jd+zkr1gURWUFDY8iidQ3kH8Xbb1lDcT
         Khw1wM/vVZprLf55KBQdhh17UjAN7/RfIa8a71EvbuwTTfmlt/L+VuI4qZihUXRKTvU2
         DV8A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXwUtP2NMzl7fQZDD6iigksuret8e6o/7Sm4CKMMGUIqxhO8zAC
	zg0qjmy5CnHymyzQWOBbYwA=
X-Google-Smtp-Source: APXvYqzk/56sHXIIjh8Oi13SHqmHjjQ81otiAk0XyscZRBhowI2Iiej9nnkEuZuxwk2EKwZbpDhiaw==
X-Received: by 2002:a63:8dc9:: with SMTP id z192mr55626433pgd.6.1558650672553;
        Thu, 23 May 2019 15:31:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b697:: with SMTP id c23ls1801634pls.16.gmail; Thu,
 23 May 2019 15:31:12 -0700 (PDT)
X-Received: by 2002:a17:90a:2908:: with SMTP id g8mr4885514pjd.131.1558650672188;
        Thu, 23 May 2019 15:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650672; cv=none;
        d=google.com; s=arc-20160816;
        b=HdkPeU4Z4GbWwGLWwH03h6wUp4DBcRE99/S0MRXFccYFNX+ANaz1bVvuqdH0SFvFiS
         0pLDBlI04W21GCeufLE0Hh+Wcpvswr5ufB8xzQuvnJJ7JUzjc0kg/v/mQp5QSY8tOdZV
         ka3SAaJ4KlMUEiSRVR4WVt2odgqLtl/WpYyAmlsgM8PYoQSG1TnWwBHFN4PdBnpgGO6E
         +Ew5R8u+ZPYsBrTracvf0Ty6ob72Mtp3I4YWxA8oZeD05hvwiCtReItc1S56VaELEuSm
         v3lCP+qy4e8ruWX96F6mLLDIegyv5UGrC3nDOLNbJZ3Qced3eLKI2rwRBnpcl0Y8h+Fj
         WBtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=5IRvA+T0u/OMU/BdPjRFb1ZNn6SZ6nqD4GdL/fgBitY=;
        b=EmvS9rB5L/IaZXMHxSvCGLu6uZPXablW5TuvvoDA0bUIwAJtYhbeyXR5FDx77SFwy1
         r4yNykN8rar7nvZvPRZhWES+KPTpDkAejXowE+21OVFvRBD5/p94o69H/T986qHowHHS
         YfnDPllF4vJFurhJ2sBmCo/pa9MNP9mSCuun3uKl5nZUsl1Ar9xRZ2VWqJYaussPirFf
         j6mxINBsLBMd9JzeOMBH9AnZGAYzby4fJuOYSVgyFHp5aZn0Zc7eeXP/bDkwKW0ndNEA
         X0a51T+sEfTZTapDzrkJSwOra+9k3bplOs1zsRJnuEKl/Lhnv1tiDznrrYPrTKeYTNIn
         dXGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id f184si69374pfb.0.2019.05.23.15.31.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062Q-Eu; Thu, 23 May 2019 16:31:10 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEq-0001SB-0u; Thu, 23 May 2019 16:31:04 -0600
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
Date: Thu, 23 May 2019 16:30:54 -0600
Message-Id: <20190523223100.5526-5-logang@deltatee.com>
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
Subject: [PATCH v5 04/10] NTB: Introduce functions to calculate multi-port resource index
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

When using multi-ports each port uses resources (dbs, msgs, mws, etc)
on every other port. Creating a mapping for these resources such that
each port has a corresponding resource on every other port is a bit
tricky.

Introduce the ntb_peer_resource_idx() function for this purpose.
It returns the peer resource number that will correspond with the
local peer index on the remote peer.

Also, introduce ntb_peer_highest_mw_idx() which will use
ntb_peer_resource_idx() but return the MW index starting with the
highest index and working down.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
---
 include/linux/ntb.h | 70 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/include/linux/ntb.h b/include/linux/ntb.h
index 91cf492b16a0..66552830544b 100644
--- a/include/linux/ntb.h
+++ b/include/linux/ntb.h
@@ -1557,4 +1557,74 @@ static inline int ntb_peer_msg_write(struct ntb_dev *ntb, int pidx, int midx,
 	return ntb->ops->peer_msg_write(ntb, pidx, midx, msg);
 }
 
+/**
+ * ntb_peer_resource_idx() - get a resource index for a given peer idx
+ * @ntb:	NTB device context.
+ * @pidx:	Peer port index.
+ *
+ * When constructing a graph of peers, each remote peer must use a different
+ * resource index (mw, doorbell, etc) to communicate with each other
+ * peer.
+ *
+ * In a two peer system, this function should always return 0 such that
+ * resource 0 points to the remote peer on both ports.
+ *
+ * In a 5 peer system, this function will return the following matrix
+ *
+ * pidx \ port    0    1    2    3    4
+ * 0              0    0    1    2    3
+ * 1              0    1    1    2    3
+ * 2              0    1    2    2    3
+ * 3              0    1    2    3    3
+ *
+ * For example, if this function is used to program peer's memory
+ * windows, port 0 will program MW 0 on all it's peers to point to itself.
+ * port 1 will program MW 0 in port 0 to point to itself and MW 1 on all
+ * other ports. etc.
+ *
+ * For the legacy two host case, ntb_port_number() and ntb_peer_port_number()
+ * both return zero and therefore this function will always return zero.
+ * So MW 0 on each host would be programmed to point to the other host.
+ *
+ * Return: the resource index to use for that peer.
+ */
+static inline int ntb_peer_resource_idx(struct ntb_dev *ntb, int pidx)
+{
+	int local_port, peer_port;
+
+	if (pidx >= ntb_peer_port_count(ntb))
+		return -EINVAL;
+
+	local_port = ntb_logical_port_number(ntb);
+	peer_port = ntb_peer_logical_port_number(ntb, pidx);
+
+	if (peer_port < local_port)
+		return local_port - 1;
+	else
+		return local_port;
+}
+
+/**
+ * ntb_peer_highest_mw_idx() - get a memory window index for a given peer idx
+ *	using the highest index memory windows first
+ *
+ * @ntb:	NTB device context.
+ * @pidx:	Peer port index.
+ *
+ * Like ntb_peer_resource_idx(), except it returns indexes starting with
+ * last memory window index.
+ *
+ * Return: the resource index to use for that peer.
+ */
+static inline int ntb_peer_highest_mw_idx(struct ntb_dev *ntb, int pidx)
+{
+	int ret;
+
+	ret = ntb_peer_resource_idx(ntb, pidx);
+	if (ret < 0)
+		return ret;
+
+	return ntb_mw_count(ntb, pidx) - ret - 1;
+}
+
 #endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-5-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
