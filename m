Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBXMCQLWQKGQEMTNQEYA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C4861D40ED
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Oct 2019 15:19:26 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id k67sf8922766qkc.3
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Oct 2019 06:19:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570799965; cv=pass;
        d=google.com; s=arc-20160816;
        b=xY+HQDwV952T8c+6T39utjn/vRN7wkA8k4Q++r4HGVlrljMtOnGI1E2Rx1Qx6axME5
         SybM6+ZUg1D3jXoR+k5R/G8MVZ7LFU0mdxZvSDPYrixjT1OrLYiNwtq9jG03bX68VaWl
         r3ryH6wt5y87QlKZqo/j2PDmS/41wLUbnhNBWeweGolU7G/pnN6ZsPndv6tr4qLBhGgV
         TErw1PIQdFhk7GQNJquaXOPxTuJRzgfSZj7gcPm+jIjzymGPrtm1U5WXCWaQ5XQU4Som
         VWhyKAMz+ihLelEtZsAwJ1A2v99B7V8sdTv9mx8utpvIVftgPUhArgzWRVx4C0vQ3Ms5
         xdpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CYAbXHD4d771pImcTCHsn/jyxJpXRwQMR1LvaDOEMNU=;
        b=i3fWrpABc9IREjHyMww66VK3qL5TGxnE8pZ+ZQYo+qiL2KNvVFid5UTxgT3p5wrRFY
         9QLmyrXMp9sZ73StTLbnEiFnMmtxVe5+0F+SwI1MGFoLJN3IUiJjWOsxvetIP4bdAfu0
         C7vK65xDizi8UBCSQBb0j3L9ZfVEeZIY8RYV8f33/oH7JfzCyN/jseFDXOxkOkBsIZAK
         9oKyiwdI52xzrR+/XgMv7kQm4vruYyRP38K7uT5uSVtOd/v8JNRP3Y+Jo2XvBEMkmxGb
         PlrmlwKJ95na+iNkYl9KhGuarbL8myoseE5QUkFPvkyDbEAycuAyEeiLQ9EhGcJMDDOn
         3MVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vylaj/R4";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CYAbXHD4d771pImcTCHsn/jyxJpXRwQMR1LvaDOEMNU=;
        b=ovhMJmHNq6sLeuHAYWUn1jflJ+LdhP0VQ8xi+7m/dFRPDyBK8v2IgvGVfQuYJ+dDfG
         roK9Xx4IWy0bvsfkaWGTvJVeJZuHT1QPvwDORJSkvRUVH+p/xOKgYk21r0zlEtLS0ZXt
         foX5VUgj+c4szfZyrXey+Dp/qgSaYIbUvnvhv2IaVqJPSCVMLuU6QlBc+ExOHZNvx8UQ
         Z9xR8ysPz5d+smm18dGVb7aPN6Fbo3ygXkdj9b9oI8OZiNgklfjCSbifR1x7+MSVxxTI
         m+67jVOTvT1eh7lh5GXDmn8p9vqLZ+E7f9liOAHkobw/tfzfsdsAR4sZncUpcGREZkOW
         MhmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CYAbXHD4d771pImcTCHsn/jyxJpXRwQMR1LvaDOEMNU=;
        b=h7yLi7JZU04L7vfZqX8T/i6UiV92jl6gvFok6cFepZlHesBMDpTP9zgKRP5H8yOQgu
         TFBfop2zNL/T2rWhGHm86tYcpyJGleYfBeB97d6jnx6qi8wpIJozkDLLGqOAdzSKV1k/
         vmkadFH9He8QOEFwJXSOcZuVj+h+/xt5GSkbY/iixcQN9QuFQDkb6i+/EeuEaFl7oaWw
         0U3L9NGnp+vCRjoyaf/5E8PAbRhB0OrVg+hpBmfPc1XVn+SLhYfOBLQYOrepMLsNMUYo
         n4SagUa5AcFAc3qBtp0CWCF03U487fAjvdrTTEfJsHNmc5+m5L3ld9gg3iduxhwVd29w
         4u4w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXG2w+FGqb/LoFdxNv2CCXi+Ltu+kKwX5b8KZik4/Oe2MZVMCFy
	yXSGAPqVWIC+t4JI6xsCmmo=
X-Google-Smtp-Source: APXvYqz06yAt/F6h8F+46wqsfYN5XcSUg+G9kRqoH3r93pzL42dQCDDGAQTf+K4x1JGXLG841u1KZg==
X-Received: by 2002:ac8:324e:: with SMTP id y14mr16963343qta.132.1570799965642;
        Fri, 11 Oct 2019 06:19:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:506:: with SMTP id 6ls1638661qkf.6.gmail; Fri, 11 Oct
 2019 06:19:25 -0700 (PDT)
X-Received: by 2002:ae9:e511:: with SMTP id w17mr12967715qkf.379.1570799965286;
        Fri, 11 Oct 2019 06:19:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570799965; cv=none;
        d=google.com; s=arc-20160816;
        b=dtXDuXAoY9ACCNP5gXkWuvD898w+HC5EVxdQZHAEoL6mXr+Yh8zItnSBs3aYMcfgU8
         YOVVciyAmf5ALWde7Wh3dPnwQGmXxa1tOKFLImAn8a9ybm1ibLTwypatlemCAhbJcmY+
         I/fyQiz8bLsWDVZjerU/7v04DUqODO+QbMyZQFrAqmUZjgFrJnFMUJJ8dNZ1CBgA7RJE
         uX/QrYfEcmacczG524Z/HAGObezI3SEtMfTKRuOBWt5NwkB+jIq2E+pefQYfHOi8CAOY
         NwtN+VOdkhuKD2ROITAqfB6ZJzhytIE/WaHvr6gVDq9vkiJRQhlAMMw+YdtlUd6v+QsT
         xJaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=PpSXmf2+egAZ+7pyemOWWD6+cJ3KvTfbFaxSfKUVu6w=;
        b=NZgZ2ey/t64o9aSjjq5pxDeG6NV/YWCWmmPQmCFNynagwqG9zJh8NJ//HnO47nNc51
         bV+JniJBZ0Fy13EFnP8dExNWMNyEA5gq2IFaoUSB4iKJVu6fSRca/85hmmPISFxG1g4X
         yskgpxkqlO/jf6Fvs+bKyhMtgDlCnBDatNtRQwGfAhDKw0Ox+E5x9/Az0YFoxzUA83Qq
         bb1DoNkZQPdqgfuw6EI7WiwNLsqaI0fRtLONegSeAXdL5JyxjxCEmalJ2sj5K2jY35dQ
         3r9xHHdLYp0n8Vli4wxR+25lEIBVv/zxKCbJpMBqzAvjef8xmzoSgCZwXY8CrGid5WfV
         uDIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="vylaj/R4";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t186si229052qkf.3.2019.10.11.06.19.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 06:19:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBB832089F;
	Fri, 11 Oct 2019 13:19:20 +0000 (UTC)
Date: Fri, 11 Oct 2019 15:19:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH] ntb: ntb_pingpong: no need to check the return value of
 debugfs calls
Message-ID: <20191011131919.GA1174815@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="vylaj/R4";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

There is no need to check the return value of debugfs_create_atomic_t as
nothing happens with the error.  Also, the code will never return NULL,
so this check has never caught anything :)

Fix this by removing the check entirely.

Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/ntb/test/ntb_pingpong.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/ntb/test/ntb_pingpong.c b/drivers/ntb/test/ntb_pingpong.c
index 65865e460ab8..04dd46647db3 100644
--- a/drivers/ntb/test/ntb_pingpong.c
+++ b/drivers/ntb/test/ntb_pingpong.c
@@ -354,13 +354,10 @@ static void pp_clear_ctx(struct pp_ctx *pp)
 static void pp_setup_dbgfs(struct pp_ctx *pp)
 {
 	struct pci_dev *pdev = pp->ntb->pdev;
-	void *ret;
 
 	pp->dbgfs_dir = debugfs_create_dir(pci_name(pdev), pp_dbgfs_topdir);
 
-	ret = debugfs_create_atomic_t("count", 0600, pp->dbgfs_dir, &pp->count);
-	if (!ret)
-		dev_warn(&pp->ntb->dev, "DebugFS unsupported\n");
+	debugfs_create_atomic_t("count", 0600, pp->dbgfs_dir, &pp->count);
 }
 
 static void pp_clear_dbgfs(struct pp_ctx *pp)
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191011131919.GA1174815%40kroah.com.
