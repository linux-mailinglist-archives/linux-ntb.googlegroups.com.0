Return-Path: <linux-ntb+bncBDIZTUWNWICRBZURU7UAKGQEEHXNFCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6B64B16D
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Jun 2019 07:32:23 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id h198sf14466538qke.1
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Jun 2019 22:32:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560922343; cv=pass;
        d=google.com; s=arc-20160816;
        b=HCogl5/IsREQG7Y1kCQX78gV2bF8BqVpuFyU49zuDnVQ504vByJ+i6r+rG4bTPWUzt
         cDvoYFR4nEsdGufnyY7f+bc2t6c1xvfhUExQygbcrUYYOkNOBX+SCWxh5bNXgx7A72VE
         OKRp/h8nF6wj2qPa31X9BLXLPGliCDc1/pFokpijWfXHLmUvu1E/VWoWj3yzF4xqOPeJ
         16A0vL6/gf+zYtF6A8a+YA4uYuVcsDDOKY6S7sJlQ2qD056pQjaClYZmLYemkNEhlmdI
         0lWbK6Azsi/9oblpFrzXJPfIp61gByzyIGg5HP8r3UONRLMHu850xYC0brTtQf/ekYbu
         2Ksw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/uC/3xaDy17jISOLYplZXeJuPPwHIMEIzPEdDNta0cA=;
        b=h7x3qSf/N4pKw1trT5qaz/NiL48BuA6tyAWW2MWkvlBH091Gbxs8yyyX0iMN6I+cSJ
         Xt/sFxntI96+Fvb6MDSDq1/YDBOe4pQNreseVYMJtyCt8LtKwIh7bnPGdIaiy5gFk5WE
         rKFyt/HD2PZBCIzawpc3ty9jwj67HDzcUcevyA6JKwz9WLC4kmE5FktfGt7eczXivBKw
         UX1phbO9gR1GAl7p289mIDI2Y4UWzoimt/asmZ/wsRNZ5Q1NagAlqqu3CDfAj7Mte+Cf
         t2qzVI9GTBEcdLpJb0fjgYvNgwqZyzQy1C6n/4HhH9z8NXFKjnIOlZZy9iZjliYT+s4E
         hfaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b="FcdQ/hXD";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/uC/3xaDy17jISOLYplZXeJuPPwHIMEIzPEdDNta0cA=;
        b=hqz1PCH/tinyopU6Qql3Z8uTElLO2OTyRj8laUccZgKOB2IgrlwQeakhsPTNaVosXl
         xKUYtDlsLIFCgVJmQVqru3Wxfn+ac6TrZdQcOxgoUfU3xScKT1QKIcBXklwNVUKl3piO
         Z/y4WaNSBDZBJD52ucssiCLw6I4x8ICXKq/+UbXPW9EazdpyfgH5k/fF1VBlqtDaxsFo
         2Y4qxUWnVOT1MCvTPBbnExNxq8mOkh4IFjvbNQbhQi8mYkAB5Pu5gaN34Go5SLpDn0A1
         a6SgiUPZNfSzLx6f+nJkeNvPT6yPTNfznPXvtJs1xUPIkmCDLE/cNIaAgE67oc3prDNA
         06/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/uC/3xaDy17jISOLYplZXeJuPPwHIMEIzPEdDNta0cA=;
        b=RfatjRpWCL3/j7+dipyyjE43HE368zlsQLUALzz+4VzH+GVZw484/KwhQjemDrcwXj
         kZ3Bn3PO41l67ry4U243u1xWW/bhDDlaq3ds3On8+NHbhmP0fLDcMGfjrVe8MWd/X+bE
         fEDY7oX2Bc8ZyyhNu7IjZ/beTPPTxkHUjEux23DgyrOR6DRQvjYsjedv4bM1ocmUKfau
         v+7+oLU4k9gdOJF+EbDAqlsqu2udzpFpns5cvxhFKiiQXaB1i+NODlqlveV1yotBC/sr
         EIzgj0E9It6eDKw/k48A6V0PzgaT2AiFcIn+bjeqQIyuNvoWLRzwSTpMfmLANNx7D+aN
         hx8g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV6xetrkZHRo+KBhg9TmAWGielCRiNX2fu93aLzxncWvxu0lqdK
	aXz/bSsNYSJgGQBDXL2WB50=
X-Google-Smtp-Source: APXvYqwlK5U4vaXZj1FPDAZzSV1MMi7uG1RxVboo5fMX0tpknXl1J/BmvwsyCn8eL8/g7uGlxEmgcQ==
X-Received: by 2002:a05:620a:69c:: with SMTP id f28mr11110958qkh.274.1560922342836;
        Tue, 18 Jun 2019 22:32:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:9aec:: with SMTP id k44ls238269qvf.2.gmail; Tue, 18 Jun
 2019 22:32:22 -0700 (PDT)
X-Received: by 2002:a0c:b115:: with SMTP id q21mr1469342qvc.68.1560922342665;
        Tue, 18 Jun 2019 22:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560922342; cv=none;
        d=google.com; s=arc-20160816;
        b=Ae/Yo+I2LqC+4tB50F8pid1yZ1GD8isZ4dcJYWiDvaKme62eOI2bcBRC3xXlnudomO
         gz0gICsuxaLs1U+8mOtn/nXoFfkFN+jUlqEYr34pCDSWqaNEu/pEumxMer/pJANoQmky
         igsRcRDhnQa9BkcIB8xUqUdiOwjGJHAVp4bZctyw6lUJiqUnJZv8/pmZbwR9IQtVyca+
         XpmiDIHLjkYZmZ6aqhZ2oTTkOnhYlHrkDWR7kDnuAZSbyeRcpl8UwTZbWrR5V7OLi+I7
         LuZd9UEFLf3mEZZk2/Ql/vT59ZgxNNiR32E7co7OXH/t+JiWiHjGJboAK7fDhP3vloAo
         Chzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mocTtvdGYNVUl/q4ExDY/sG+3HeXGdnqOCW2dwUTTYw=;
        b=kNwNLtHGbgDEypSuFeTahqtzvLhHMTQdXKZ42SNDx+V/TXK2RN4K2dlPRKyYdD7+U1
         1zOJ+StAY1G7gW6S4TJkI8gt0RuYWZz8FrdSjr4hPNKF2twAOi9TEjezt0K3Epdbls4q
         KcYezpjYKPVpNhC1U/o/HRVwRi3UE4oXXGmS7nsE4TQ+5x4I0b13areuu9mPBILmHz4f
         j8f3r7xN3yX2scCdRIncGCq//cVH+N+HxznCqTwbzcyV/fyS5mUrb5H6D3+usRWSDtVZ
         xP1mkJUOXkYjO1MmJ5uEy1gkWz+kABWKoopVHqt+WF3y9yahOkh+Z3HcIQgDKZ0EmT0E
         KAig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b="FcdQ/hXD";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id y53si1132910qtj.1.2019.06.18.22.32.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Jun 2019 22:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J5P521177654;
	Wed, 19 Jun 2019 05:32:15 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2t780994jk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Jun 2019 05:32:15 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J5V8Ib071995;
	Wed, 19 Jun 2019 05:32:15 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by userp3020.oracle.com with ESMTP id 2t77ymveds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Jun 2019 05:32:14 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5J5WDka009329;
	Wed, 19 Jun 2019 05:32:13 GMT
Received: from mwanda (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 18 Jun 2019 22:32:13 -0700
Date: Wed, 19 Jun 2019 08:32:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jon Mason <jdmason@kudzu.us>, Logan Gunthorpe <logang@deltatee.com>
Cc: Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
        kernel-janitors@vger.kernel.org
Subject: [PATCH] NTB: test: remove a duplicate check
Message-ID: <20190619053205.GA10452@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190043
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190043
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2018-07-02 header.b="FcdQ/hXD";
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

We already verified that the "nm->isr_ctx" allocation succeeded so there
is no need to check again here.

Fixes: a6bed7a54165 ("NTB: Introduce NTB MSI Test Client")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
---
Hey Logan, can pick a patch prefix when you're introducing a new module?
"[PATCH] NTB/test: Introduce NTB MSI Test Client" or whatever.

 drivers/ntb/test/ntb_msi_test.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 99d826ed9c34..9ba3c3162cd0 100644
--- a/drivers/ntb/test/ntb_msi_test.c
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -372,9 +372,6 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 	if (ret)
 		goto remove_dbgfs;
 
-	if (!nm->isr_ctx)
-		goto remove_dbgfs;
-
 	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 
 	return 0;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190619053205.GA10452%40mwanda.
For more options, visit https://groups.google.com/d/optout.
