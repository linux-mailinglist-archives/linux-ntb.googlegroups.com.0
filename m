Return-Path: <linux-ntb+bncBAABBRXY4LTQKGQEC35BADY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2837E36D0B
	for <lists+linux-ntb@lfdr.de>; Thu,  6 Jun 2019 09:10:00 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id a198sf322158oii.15
        for <lists+linux-ntb@lfdr.de>; Thu, 06 Jun 2019 00:10:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559804999; cv=pass;
        d=google.com; s=arc-20160816;
        b=OsGWW+E0UUnnM8hHcK2uHTUO/61ByR3Ywec8oyVCoxGGbx00biFFa8Aocq5cMuZ8c8
         ujv4NQsQCd+wbb8J406/NNStb+dnAF30TzL+n6kWOcdfVu7ny9zpOcWl5O+5SlvrTFV2
         mVTbQD+mY1mvn8An43zVkm/MPA4txGqGTGHZmizHEzebxnZ07/LATTftmuFVaCx0TZ7k
         sWEmyc9rRGX/tjVsSviZbWVeJZuOU84y4LdEQiidgT5u8L0QJlZgkhYvKoaqxrZqzdj0
         NoXbLN2vXotoRNuNsQ76lroyes+sPRjl6QISx+5sqCEOoZncjz3en33MGZxi4UM8xzgz
         /b1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=gE+EPug1iO5/6wxyLUvpFLcRk1L5lyOBFESRilzbnl4=;
        b=GEz1QeLfP0Sww7O9kkSYnzMX5baHOJiNIETZyzEpffeK+0CROGhQGinmqlfOtrnG2A
         0WiLqfCGJu5d3NVLZnf4xtaFaClo3WY1FSk905eppdwvpof3d4AS6qs6X/NOzTiV8Z7n
         B7dVrQd1dAoqAPiJwIBZoACLoJ5CU/kz866o4PTL3ClltAlEobF7ZmAXjAV8joXf9fhu
         BCqIsAaszCaNZ2sKJa/b126C912YnQMaoGOA9M8NIqlpLZxNYEh+xu98n89oDC2ayf/k
         qYLCa9zj9mhAVwsnYZEGl5gzWOjzihcMEwP5q7hbzL/aaC0hoQWocMD461OxyNJFbXIL
         Hs8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 216.71.154.253 as permitted sender) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gE+EPug1iO5/6wxyLUvpFLcRk1L5lyOBFESRilzbnl4=;
        b=KyEHTURoR79cE/5eYwscntdEMS+vk7VeElZtU6iKy/vovIXxLki/X8JF2HWuqBBXmH
         WJ3/wsa9cHCDDznzIRCTOoJOpUKRvqn0LkFci1yO8tIkVNRiQYAs+Fqrc1GjacOKkAm7
         oHgl+d0yRCkbRhdt7fCzqUGMESg0BLOSM/YhRRbqu67pkysmeRBsjULadhP8A0k1PY0u
         9as+ZoK5A07xsosb1Sg4klgFMDhhxp4xCr+Zl0y9CVpM+uPrrGYIibk1rlsgE65pxKxa
         jSeB7u3gh+g7MmGyy5JlUMj9CbOA8a6nK7FDAXQXwMAF2KdKHCMTI+sVj3skfio7fquz
         aBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gE+EPug1iO5/6wxyLUvpFLcRk1L5lyOBFESRilzbnl4=;
        b=p7eklhvFnzKbuFbs1dlgSpXuU8bJ7t4tk9GKf/E+humlUmEEK08oTIm3EavNSu/xR1
         HO+dflVe3xi6zUU6edZUj2i6L5UkB1FgEe+oKNtGU7aXXW4hdB5EzQnpZpLS1NtwEQq5
         mp0O2tWe78nr+MuSagQ+obHiZfvA52wPwIs/id/QbTzUD/w/AZ0WXnLUPzCp72YuaGJi
         58DADVJRv2teEB3OYXEr3OKhBxWXN6H16aFzuD7vJLyhDGvsfp4f4WXxDdCe7CmRhPhb
         QUisPhHQYMbRgqfA74I4dAjb99Vdyjms/iqP0O4Pq35clVL/gt/VR4+YjoS/eDmgEuqn
         Rdhw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWA60jvl0UPLSWrtnqXK9NJdTsG+AOVeYfuupd3UzYdUFFJtHNm
	KK4dmsuAsbxsiBJyiQC9ZOA=
X-Google-Smtp-Source: APXvYqw+iQrfAkjLlNTbpchfe59EEja3YkDZGUuAH/BCXElsp8arVUM0qusMXn2Qn88i6ygmmcxAsg==
X-Received: by 2002:aca:7585:: with SMTP id q127mr11624044oic.113.1559804998717;
        Thu, 06 Jun 2019 00:09:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:ec8:: with SMTP id 66ls831780otj.16.gmail; Thu, 06 Jun
 2019 00:09:58 -0700 (PDT)
X-Received: by 2002:a9d:4d0b:: with SMTP id n11mr8785416otf.229.1559804998546;
        Thu, 06 Jun 2019 00:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559804998; cv=none;
        d=google.com; s=arc-20160816;
        b=rU56AMU2rmXDxJjP6eaZAvrWjGq1xwdbiwT8SsIS3vFm+iPWe0S+Md3sVBCKDteAUA
         tIvZfgjKIMhkVcy3Bb/FBSZ58G1ZUh9Q1EwPf1CDX2OaWFC7PAKZF3smx8gwRBKIcotk
         CE2ONGQmbNfIiMUb0AsvVtNpsXDuGex7v13VAIxjOlmOM6SqnjrGCvnC3v7kidL1gZ6N
         ZNxHw1BCD40wrJD8rGFDyyJnJcd9XqqyoHABtSmOnb0RD3/n6ZArys92iBYuD8o1+f3t
         ppSLfH7CwrfcDL0w+FXfmpZ9RTebWdRxb42P3j7pB6ncP/7yY+Fh0rlnV0okaAxidwCB
         jleg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from;
        bh=xN3yXi1BWsTaKdxrsuXJzL14Z3kJzy6uYnJv+PzUeAU=;
        b=yLmVuscZCb8TIJpIGWFMM+2BDEatw8XfuPvE3h3SUvwGwakVKCL0p6hzTht9RBrxWn
         4EfKo1ENkeZETVId2+Xa2mUlZImfDzwWXISYaz4OmZDkGzCidyuHRtsXEWFZmhxjS1Ld
         6mSyFOXPDrJ9TSmfdRvkW7r5o3FwaC7P9GVRWn3JQ8MoYeOXcQEYZGzKHVSFov65xzcy
         AJKg/pwIKyO0QGjHDxEs8M7r9hL4z0fKWuUBhcKv4NWjLcgx8Q3bUfQbQmPo4ZzXFMvX
         BaH2fIh7TVyw5vLGX2Y99qLkBnAzUhElaBj+LPCp1kyNchCoHjyiT62f3J3x4+y0h5zO
         XYvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 216.71.154.253 as permitted sender) smtp.mailfrom=kelvin.cao@microchip.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=microchip.com
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com. [216.71.154.253])
        by gmr-mx.google.com with ESMTPS id o125si20148oig.5.2019.06.06.00.09.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 00:09:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 216.71.154.253 as permitted sender) client-ip=216.71.154.253;
Received-SPF: SoftFail (esa6.microchip.iphmx.com: domain of
  kelvin.cao@microchip.com is inclined to not designate
  208.19.100.22 as permitted sender) identity=mailfrom;
  client-ip=208.19.100.22; receiver=esa6.microchip.iphmx.com;
  envelope-from="kelvin.cao@microchip.com";
  x-sender="kelvin.cao@microchip.com"; x-conformance=spf_only;
  x-record-type="v=spf1"; x-record-text="v=spf1 mx
  a:ushub1.microchip.com a:smtpout.microchip.com
  a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
  include:servers.mcsv.net include:mktomail.com
  include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
  authenticity information available from domain of
  postmaster@smtp.microsemi.com) identity=helo;
  client-ip=208.19.100.22; receiver=esa6.microchip.iphmx.com;
  envelope-from="kelvin.cao@microchip.com";
  x-sender="postmaster@smtp.microsemi.com";
  x-conformance=spf_only
X-IronPort-AV: E=Sophos;i="5.63,558,1557212400"; 
   d="scan'208";a="33318222"
Received: from unknown (HELO smtp.microsemi.com) ([208.19.100.22])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 06 Jun 2019 00:09:56 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX2.microsemi.net
 (10.100.34.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:55 -0700
Received: from AVMBX3.microsemi.net (10.100.34.33) by AVMBX3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 6 Jun 2019
 00:09:54 -0700
Received: from NTB-Peer.microsemi.net (10.188.116.183) by avmbx3.microsemi.net
 (10.100.34.33) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 6 Jun 2019 00:09:52 -0700
From: Kelvin Cao <kelvin.cao@microchip.com>
To: <kurt.schwemmer@microsemi.com>, <logang@deltatee.com>, <jdmason@kudzu.us>,
	<dave.jiang@intel.com>, <allenbh@gmail.com>, <linux-pci@vger.kernel.org>,
	<linux-ntb@googlegroups.com>, <linux-kernel@vger.kernel.org>
CC: <kelvin.cao@microchip.com>, <kelvincao@outlook.com>
Subject: [PATCH 2/3] ntb_hw_switchtec: Skip unnecessary re-setup of shared memory window for crosslink case
Date: Thu, 6 Jun 2019 15:09:43 +0800
Message-ID: <1559804984-24698-3-git-send-email-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559804984-24698-1-git-send-email-kelvin.cao@microchip.com>
References: <1559804984-24698-1-git-send-email-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of kelvin.cao@microchip.com designates 216.71.154.253 as
 permitted sender) smtp.mailfrom=kelvin.cao@microchip.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=microchip.com
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

From: Wesley Sheng <wesley.sheng@microchip.com>

In case of NTB crosslink topology, the setting of shared memory window in
the virtual partition doesn't reset on peer's reboot. So skip the
unnecessary re-setup of shared memory window for that case.

Signed-off-by: Wesley Sheng <wesley.sheng@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 947ed0b..6cf15c18 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -1459,6 +1459,9 @@ static int switchtec_ntb_reinit_peer(struct switchtec_ntb *sndev)
 {
 	int rc;
 
+	if (crosslink_is_enabled(sndev))
+		return 0;
+
 	dev_info(&sndev->stdev->dev, "reinitialize shared memory window\n");
 	rc = config_rsvd_lut_win(sndev, sndev->mmio_peer_ctrl, 0,
 				 sndev->self_partition,
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1559804984-24698-3-git-send-email-kelvin.cao%40microchip.com.
For more options, visit https://groups.google.com/d/optout.
