Return-Path: <linux-ntb+bncBAABBQ7Y4LTQKGQEBBLT7WQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id B80A836D0A
	for <lists+linux-ntb@lfdr.de>; Thu,  6 Jun 2019 09:09:56 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id b197sf915468iof.12
        for <lists+linux-ntb@lfdr.de>; Thu, 06 Jun 2019 00:09:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559804995; cv=pass;
        d=google.com; s=arc-20160816;
        b=1A/lE1lorBvnpj6lfbwo1Cub5SxgtAYERdzUvjbw1iqS8XR6sSBMniGYktDsmbIA2d
         DmzGTB1GA2bwISDXgMd7/b9wiWsQIXgqD5ggBVu+/aDq/BiqvqWzl43dtle40zHxTcGV
         zQooGo2YV97mAkQmdGwp6HYQkgneocxm36+Mo88kQ0252IQBDcdDb8/LdIxB+elPaNcX
         2gWyVFNH3uQUG4DrFSl+5NoESLHdf6aXzFeSdQCT9rtdXmrMZ5n48atOEdKVZ0IOQNKi
         0YqEf3bENC/JmNVFQjd79q2ItlzZ1SNeJhvwsKOVSegXvrS3ygLNNmGSur1B1HP9LE7O
         FotQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PTwsnYTP0LIqdSuTHyKPoCEpzYv8SxGkpMqa/CzU2zU=;
        b=SIJidqWrudz7s2PdTJmLhMb4UWYTv0h4RR7uUGI0B+R14ehvUmfCDPLM4BR8fRFGVa
         cP+iF10GINmTtbLRmJtBC1Cpz9uWrSP2a+Pr7W/ezhr7nzJAHut5nm48Ynw/Wt8Kxwkk
         GSMgCyIpfkwpMpvHwu58AjWhYymLth9h5E9J4WIH0R+u1Lgca7rtg/yWXWBEoWCM/E7C
         iV26ml9znEAOImKct7tjnd0oyAXjVecSLktr4tDPqbhdVjF7JEVJaI3t7GCfN/fux1+F
         uB3haKOqkjoM5LYC0Nb4d/QyKmUIobyv3uGNlblocK9EmBA0h3iDpVJ7+JTNRYCU0ZFZ
         SXnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 68.232.149.84 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PTwsnYTP0LIqdSuTHyKPoCEpzYv8SxGkpMqa/CzU2zU=;
        b=BAnJqKmws0EUb7E7SQ67JoMZbcw+leDaKFzxHyf4hJP+dX4PHLuDL7oNJbFCkyrLyg
         admXFIM3iOjsIfZ/p7dgdxr2LXRfQmgIrdrxkt0nBULJmR53lYcQWqqkDXDtYULhtN1E
         npVU9LEbnMx5jdEV6hmpycrdQdmDL6OinoDJz1mvNwKkjkJvzCVthFtGRzga5sS3I34a
         APxMY5BA60cu74msTM2tQ06IhifI8OSaX1GCbFUCQE59QOUe8ww91UfPCLbmYS4cML43
         YWjqxj7RdY7hiZv8JYHdIi2X2QuWUEtMrdubu0bf+cJzNPRjvSwotJ5dsHlvDaGxTTJ8
         5JVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PTwsnYTP0LIqdSuTHyKPoCEpzYv8SxGkpMqa/CzU2zU=;
        b=MXjVlHd67n57xILXfpCVU5bjnloydJJ3c8e1J8D5+fh9l2EXu5GBIF84PLSd6mJGtE
         pj8IxvkM8jhuHKnD8b+VN0dMi8yfobJAG2vVlxiGSjaLnGJxd8ec3cT6Rv+4i3cWAEGc
         UwJBQsNbbmZOobM5wWAu4CuB4ZO6zSuwxSCDXvxT0XVoEMytL2/9FYGaan5gww+Lm7GT
         Vnj27T3Wk9wJzUQ/xHhVQyQXOGHTkmN01MQBoLFW4vmGAvnohRE0jtKWE9KRFb2uxHAC
         0T1hQJLG8BTMwvyGC5Z5y0uyVoztBNH/yPw+Lgm+R1SNDBvM+DymgN2pFMC+OaSg4oTJ
         sZFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXzb1UWOy9XgxtXwWUGOm/TIW+Eo9o6rTbryaFuZHQ75o0stcAj
	KaiwHbkm+m6AG5Do4B+L3KI=
X-Google-Smtp-Source: APXvYqz26WJA05BLtDxd/yHQXZzyHoezMdRl71dMza+Lt8DZFySk6Lnou/YH9cHc8lFguX6Vb6mvaA==
X-Received: by 2002:a02:82ca:: with SMTP id u10mr31077967jag.131.1559804995302;
        Thu, 06 Jun 2019 00:09:55 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:e00b:: with SMTP id z11ls720748iog.9.gmail; Thu, 06 Jun
 2019 00:09:55 -0700 (PDT)
X-Received: by 2002:a5d:958d:: with SMTP id a13mr19658706ioo.288.1559804995035;
        Thu, 06 Jun 2019 00:09:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559804995; cv=none;
        d=google.com; s=arc-20160816;
        b=cPtp8ctPs5BKdbgzvihgyXGRBUaMXMLmrsW3Ypxaw7pYRlpG/+dPv+9+kMUqIatgfO
         nPAcr24FEpkxYSdSFibJdZEzWXN26wSo+TRSRkBLkmj+XNM4aCg6QcJvpzIZAavA6HGP
         sm2LDpvrsGa7PashjzTp6+dGwFGOcv3D2Hqit2g0xu8djtpl3jF7CceC9ln9pBmldEgB
         q0GXSAV7oc83Qzy3VIX64ZiF0UCLhCrKBHSNqYT0wU82MO4tipr9KEBFXds0rYmB5PiG
         L0362eVYy/gygt/GcjJSNNJNx5rguHntrQd+1ugNkPCvDbAjGqL6OT4xbA/YSJOFwNYz
         GLng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=m69FZZN5KYt61dbIldU5rNcOzfekT4rZ48WwQcrhgqg=;
        b=x3loSewbJdkjjdKnsS5ZdvGWsZOFGXsoSPCvyhfCmGREMg/WMPJRQjAbcQP5nDanJw
         kkGvr4FYt9E9p1Wu1Dujv+mrmZDqwETMgvb6iW2CClT4cPBnWrZPJ5XGC1n2HY8M/ks7
         ottD2SS/is8ZHh87H3wK6SuPvHXEHM2LrrbLasEGB+LjymWmg4MLfuGxPhEVyphksBtK
         JkhVOUUlLGyjAU/gn2R+J/i986uGfLyCg3124p6MwrehFxXyIj0eLx1DNUvTNd4qW5vK
         YqiXbNtMzwYe3afwamEWLbG5DLFqILdBpAHvRafDoWdhGD1URG8mX+ZfZ38D3hCdwYeQ
         iW4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 68.232.149.84 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com. [68.232.149.84])
        by gmr-mx.google.com with ESMTPS id o123si101194itc.3.2019.06.06.00.09.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 00:09:53 -0700 (PDT)
Received-SPF: neutral (google.com: 68.232.149.84 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) client-ip=68.232.149.84;
Received-SPF: SoftFail (esa2.microchip.iphmx.com: domain of
  kelvin.cao@microchip.com is inclined to not designate
  208.19.100.22 as permitted sender) identity=mailfrom;
  client-ip=208.19.100.22; receiver=esa2.microchip.iphmx.com;
  envelope-from="kelvin.cao@microchip.com";
  x-sender="kelvin.cao@microchip.com"; x-conformance=spf_only;
  x-record-type="v=spf1"; x-record-text="v=spf1 mx
  a:ushub1.microchip.com a:smtpout.microchip.com
  a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
  include:servers.mcsv.net include:mktomail.com
  include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@smtp.microsemi.com) identity=helo;
  client-ip=208.19.100.22; receiver=esa2.microchip.iphmx.com;
  envelope-from="kelvin.cao@microchip.com";
  x-sender="postmaster@smtp.microsemi.com";
  x-conformance=spf_only
X-IronPort-AV: E=Sophos;i="5.63,558,1557212400"; 
   d="scan'208";a="36174407"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 06 Jun 2019 00:09:52 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:52 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:51 -0700
Received: from NTB-Peer.microsemi.net (10.188.116.183) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 6 Jun 2019 00:09:48 -0700
From: Kelvin Cao <kelvin.cao@microchip.com>
To: <kurt.schwemmer@microsemi.com>, <logang@deltatee.com>, <jdmason@kudzu.us>,
	<dave.jiang@intel.com>, <allenbh@gmail.com>, <linux-pci@vger.kernel.org>,
	<linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <kelvin.cao@microchip.com>, <kelvincao@outlook.com>
Subject: [PATCH 1/3] ntb_hw_switchtec: Remove redundant steps of switchtec_ntb_reinit_peer() function
Date: Thu, 6 Jun 2019 15:09:42 +0800
Message-ID: <1559804984-24698-2-git-send-email-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559804984-24698-1-git-send-email-kelvin.cao@microchip.com>
References: <1559804984-24698-1-git-send-email-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 68.232.149.84 is neither permitted nor denied by best guess
 record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
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

From: Joey Zhang <joey.zhang@microchip.com>

When a re-initialization is caused by a link event, the driver will
re-setup the shared memory window. But at that time, the shared memory
is still valid, and it's unnecessary to free, reallocate and then
initialize it again. We only need to reconfigure the hardware
registers. Remove the redundant steps from
switchtec_ntb_reinit_peer() function.

Signed-off-by: Joey Zhang <joey.zhang@microchip.com>
Signed-off-by: Wesley Sheng <wesley.sheng@microchip.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index d905d36..947ed0b 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -1457,10 +1457,13 @@ static void switchtec_ntb_deinit_db_msg_irq(struct switchtec_ntb *sndev)
 
 static int switchtec_ntb_reinit_peer(struct switchtec_ntb *sndev)
 {
-	dev_info(&sndev->stdev->dev, "peer reinitialized\n");
-	switchtec_ntb_deinit_shared_mw(sndev);
-	switchtec_ntb_init_mw(sndev);
-	return switchtec_ntb_init_shared_mw(sndev);
+	int rc;
+
+	dev_info(&sndev->stdev->dev, "reinitialize shared memory window\n");
+	rc = config_rsvd_lut_win(sndev, sndev->mmio_peer_ctrl, 0,
+				 sndev->self_partition,
+				 sndev->self_shared_dma);
+	return rc;
 }
 
 static int switchtec_ntb_add(struct device *dev,
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1559804984-24698-2-git-send-email-kelvin.cao%40microchip.com.
For more options, visit https://groups.google.com/d/optout.
