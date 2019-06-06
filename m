Return-Path: <linux-ntb+bncBAABBSHY4LTQKGQE2X5MHVQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A1036D0C
	for <lists+linux-ntb@lfdr.de>; Thu,  6 Jun 2019 09:10:01 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id h3sf909835iob.20
        for <lists+linux-ntb@lfdr.de>; Thu, 06 Jun 2019 00:10:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559805000; cv=pass;
        d=google.com; s=arc-20160816;
        b=AKKq4CQ/BYc/G0LNg/xQPZfeDeqMb/Ea9i9oCdOm0+qN9TvfxZcrhn25CqQ7DOlI5+
         mc6HRgS3hE+ITFVdvhP2eWfTwqzrTKLl8PxmebZR4i4XsGrKV1wlxCYcoqY0QM397Cxx
         FaguyJeEzlwqxuGhd/r9LuOAsSCZPrSKsN056xFR/RFXNeeCwV37XCVjCalS+TkLS1zU
         UqecOt49/cwW9u2OZmL6o11XhrvTK36RwFoFufklEL3jUOQs0NxqcM2j0beTrjQnHCch
         xqJJtGHc0nYHzi3W/wHbsCtLpEf5sxwwG5ykxAaD+9S/ftXQMI8VkeC0PkbQj5PxZ9Rl
         3Aow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iTs5c7+HjJOjGHPwsvIHwpacdQa0j+cRV9CA93Kpyio=;
        b=GVVse1UQZMjrLvrQGCGAZDwDGjrUGa89A3MD3DVe1vceRRknj3y5zNKLmmZour0och
         QX5grMFjm9aP1sw8TzV+tPsbZLf5wNIDRe+9CJrI+5RsTpI5zeLc1T7uUJZL1KiQXyVp
         eCKrEWAXnpGXL/T1AkbzF0ns4hhVz44gaWJ3cVmJNSkS29jTdKe6s1GHq0CUhER9N7TF
         KwatjRvSh4JetiNGpLH3Rt7vw7QjuvC2N1qY+ch7e9jQPiNCzYHGkBaOQxdo3nm0E6oN
         588sfkhnlZ/KCB4qDbOCprqijwD00tRb+H8B3R5T/VNKwTqJWs33xC6qPz4JoBobCium
         cCPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 68.232.149.84 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iTs5c7+HjJOjGHPwsvIHwpacdQa0j+cRV9CA93Kpyio=;
        b=SqVJzJJUrae+VcioOrUF9KIPK6RRqy5tIgzOBV3g8wSkxsyoX53pzvyJ6T2iXzb/9i
         voyjxyzyGvzgh0dN9fyjoiOr0Aww0SfVycIW8wcxtkGxws2aoUlQhZmg6lSSYOTHxWjl
         Y3xPLE/KhBuqK9Qg8gc+llnnMvtI/21sfv+M2BzgMcZ+gv6238WpPgp2L+0S34BY0qMJ
         TjF53EAwYYbWoYO8g+iDEvHCzRQhx6HgzoTh+aH7zOxDtpAULZYnbNGJdZCNr5c/7CU2
         x2NclFCRRsI0jbIXMJQAjfKn6/xNlDaxQjVZ6s/GrpmvJ8Vs8bILrJBdyXkavZrXmTPg
         1vaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iTs5c7+HjJOjGHPwsvIHwpacdQa0j+cRV9CA93Kpyio=;
        b=j1Jv3lIhym1Ni/3c4lbYZ/8sQeL1fieM58x+jV3c+Z4uWDuSpeNsxDyl791SIH7JhW
         TW47IiEyN9qDjOms979IRVHKpkf2TYwbpjL6s3lWvLX0W6zqOG8tO4DyTBiBQTmAqWDi
         fxCGDHJ+IlUT8qUWOYmUEL1nYT69HAloa5ykj6K8iH1L6iyn261wELE8JVtJ4aE6CuXJ
         b9Ez+HAuJcSIgpiX/VHfhIW7XgJI7n5t/JN0BnewMClyR5UmbIVRkDWllNfMm1VVjimZ
         IRVF1PAsXZOrPWZVGsFEZl+xX+a9hROSfol8MINs9e2D0DiUDEnlrCcESQlCQrY0UpIh
         48cQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU+DTZP5jCSwkWWjQLZRiKZDPvpR4f+8EmRb1vaTVyh/OTqJDyW
	8CGdc0pTNnPe5ctSvmFZhqE=
X-Google-Smtp-Source: APXvYqwAlny0pckTwWdSk+xIubR/riKdME0Gfv0Bu647gDH3qHJF4dP3v96oJr8J/Xn8pDnRc/Zn2g==
X-Received: by 2002:a24:55d1:: with SMTP id e200mr31837999itb.125.1559805000250;
        Thu, 06 Jun 2019 00:10:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:782:: with SMTP id f124ls388654jaf.1.gmail; Thu, 06 Jun
 2019 00:10:00 -0700 (PDT)
X-Received: by 2002:a02:b710:: with SMTP id g16mr11060389jam.88.1559805000030;
        Thu, 06 Jun 2019 00:10:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559805000; cv=none;
        d=google.com; s=arc-20160816;
        b=YPSmA5tjejK9/pCXx4e4bnx+m4pNVh11TydR1ef7BbyaLAs1limKiDuG8mZpDGSAkw
         ZwMOHMJQxydVhChOtWRIknJY/s7ZFSoVt//D821XUeodsUsLQjfL88PX5wxDPw0Yhgnm
         rDLE8EFIz2mnoP46zvgTSgicymUAJV+KlFzRAV1jmGUdzHPiHYSRMmaefBu6YqeNwKGB
         zkhPoLgqmKMDpE+TKCN/S97Ozhwoaw+Oqw02MykpmIPGOAfa8wEp/otRhGZsNPmMsaX4
         rAGRcA4dRmZrC8uzfqmiahP2kJ4SEi237KIv/P3H1WxMtEjqwt26E3AnZ0OvxCSgIII6
         zoRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=PbFNndddgO85j1uIJk8yK9VUNuCh77ByRuk8BHuj36c=;
        b=RJkT7Jxt++n12qtIpZEWG+3MGaoLHKvIgPdDbPrge8bMX9b05h/i5tggIhf18iwZX1
         Ljpoz2yvpIpuFgXnpHM6glM4E0Ciy6t4ePYkUIV24N7MHGohd5AmCDjyCLfxm3gQSW4e
         VFOzT+hDjMElS2bxIUOs7yGRix1C2iU4PcSWxYiCypNxMX3AmESxu3M8Oglgjc/URIRv
         47nLtmpwpN05K0RmQDGULQPwMA5LJuU/WG8KfwZy6wufIqGQLu1dzgSmlqA7C9eZYwP3
         LMPa7pSmIsKS0/XtUIyq7+rEVUQwYYsx1aBCca8+2eq0Kbumcxj5PQJgrSDG7/Bh+otb
         0tRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 68.232.149.84 is neither permitted nor denied by best guess record for domain of kelvin.cao@microchip.com) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=microchip.com
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com. [68.232.149.84])
        by gmr-mx.google.com with ESMTPS id o123si101194itc.3.2019.06.06.00.09.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 00:10:00 -0700 (PDT)
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
   d="scan'208";a="36174409"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 06 Jun 2019 00:09:59 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:58 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:58 -0700
Received: from NTB-Peer.microsemi.net (10.188.116.183) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 6 Jun 2019 00:09:55 -0700
From: Kelvin Cao <kelvin.cao@microchip.com>
To: <kurt.schwemmer@microsemi.com>, <logang@deltatee.com>, <jdmason@kudzu.us>,
	<dave.jiang@intel.com>, <allenbh@gmail.com>, <linux-pci@vger.kernel.org>,
	<linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <kelvin.cao@microchip.com>, <kelvincao@outlook.com>
Subject: [PATCH 3/3] ntb_hw_switchtec: Fix setup MW with failure bug
Date: Thu, 6 Jun 2019 15:09:44 +0800
Message-ID: <1559804984-24698-4-git-send-email-kelvin.cao@microchip.com>
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

Switchtec does not support setting multiple MWs simultaneously. The
driver takes a hardware lock to ensure that two peers are not doing this
simultaneously and it fails if someone else takes the lock. In most
cases, this is fine as clients only setup the MWs once on one side of
the link.

However, there's a race condition when a re-initialization is caused by
a link event. The driver will re-setup the shared memory window
asynchronously and this races with the client setting up it's memory
windows on the link up event.

To fix this we ensure do the entire initialization in a work queue and
signal the client once it's done.

Signed-off-by: Joey Zhang <joey.zhang@microchip.com>
Signed-off-by: Wesley Sheng <wesley.sheng@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 66 ++++++++++++++++++++--------------
 1 file changed, 39 insertions(+), 27 deletions(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 6cf15c18..fffff9a 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -95,7 +95,8 @@ struct switchtec_ntb {
 	bool link_is_up;
 	enum ntb_speed link_speed;
 	enum ntb_width link_width;
-	struct work_struct link_reinit_work;
+	struct work_struct check_link_status_work;
+	bool link_force_down;
 };
 
 static struct switchtec_ntb *ntb_sndev(struct ntb_dev *ntb)
@@ -494,33 +495,11 @@ enum switchtec_msg {
 
 static int switchtec_ntb_reinit_peer(struct switchtec_ntb *sndev);
 
-static void link_reinit_work(struct work_struct *work)
-{
-	struct switchtec_ntb *sndev;
-
-	sndev = container_of(work, struct switchtec_ntb, link_reinit_work);
-
-	switchtec_ntb_reinit_peer(sndev);
-}
-
-static void switchtec_ntb_check_link(struct switchtec_ntb *sndev,
-				     enum switchtec_msg msg)
+static void switchtec_ntb_link_status_update(struct switchtec_ntb *sndev)
 {
 	int link_sta;
 	int old = sndev->link_is_up;
 
-	if (msg == MSG_LINK_FORCE_DOWN) {
-		schedule_work(&sndev->link_reinit_work);
-
-		if (sndev->link_is_up) {
-			sndev->link_is_up = 0;
-			ntb_link_event(&sndev->ntb);
-			dev_info(&sndev->stdev->dev, "ntb link forced down\n");
-		}
-
-		return;
-	}
-
 	link_sta = sndev->self_shared->link_sta;
 	if (link_sta) {
 		u64 peer = ioread64(&sndev->peer_shared->magic);
@@ -545,6 +524,38 @@ static void switchtec_ntb_check_link(struct switchtec_ntb *sndev,
 	}
 }
 
+static void check_link_status_work(struct work_struct *work)
+{
+	struct switchtec_ntb *sndev;
+
+	sndev = container_of(work, struct switchtec_ntb,
+			     check_link_status_work);
+
+	if (sndev->link_force_down) {
+		sndev->link_force_down = false;
+		switchtec_ntb_reinit_peer(sndev);
+
+		if (sndev->link_is_up) {
+			sndev->link_is_up = 0;
+			ntb_link_event(&sndev->ntb);
+			dev_info(&sndev->stdev->dev, "ntb link forced down\n");
+		}
+
+		return;
+	}
+
+	switchtec_ntb_link_status_update(sndev);
+}
+
+static void switchtec_ntb_check_link(struct switchtec_ntb *sndev,
+				      enum switchtec_msg msg)
+{
+	if (msg == MSG_LINK_FORCE_DOWN)
+		sndev->link_force_down = true;
+
+	schedule_work(&sndev->check_link_status_work);
+}
+
 static void switchtec_ntb_link_notification(struct switchtec_dev *stdev)
 {
 	struct switchtec_ntb *sndev = stdev->sndev;
@@ -577,7 +588,7 @@ static int switchtec_ntb_link_enable(struct ntb_dev *ntb,
 	sndev->self_shared->link_sta = 1;
 	switchtec_ntb_send_msg(sndev, LINK_MESSAGE, MSG_LINK_UP);
 
-	switchtec_ntb_check_link(sndev, MSG_CHECK_LINK);
+	switchtec_ntb_link_status_update(sndev);
 
 	return 0;
 }
@@ -591,7 +602,7 @@ static int switchtec_ntb_link_disable(struct ntb_dev *ntb)
 	sndev->self_shared->link_sta = 0;
 	switchtec_ntb_send_msg(sndev, LINK_MESSAGE, MSG_LINK_DOWN);
 
-	switchtec_ntb_check_link(sndev, MSG_CHECK_LINK);
+	switchtec_ntb_link_status_update(sndev);
 
 	return 0;
 }
@@ -844,7 +855,8 @@ static int switchtec_ntb_init_sndev(struct switchtec_ntb *sndev)
 	sndev->ntb.topo = NTB_TOPO_SWITCH;
 	sndev->ntb.ops = &switchtec_ntb_ops;
 
-	INIT_WORK(&sndev->link_reinit_work, link_reinit_work);
+	INIT_WORK(&sndev->check_link_status_work, check_link_status_work);
+	sndev->link_force_down = false;
 
 	sndev->self_partition = sndev->stdev->partition;
 
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1559804984-24698-4-git-send-email-kelvin.cao%40microchip.com.
For more options, visit https://groups.google.com/d/optout.
