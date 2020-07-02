Return-Path: <linux-ntb+bncBCOOP4VF5IDRBH5T633QKGQELKENINI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9211B211E55
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:24:00 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id i9sf4359900oom.6
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:24:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678239; cv=pass;
        d=google.com; s=arc-20160816;
        b=rXcKzuakmTsIfjEHuR8kaeYs2mvSUaZQyhOVKSTHrbysWg2qnmeIC8D1+54r/ftQB7
         N/Odb+vppR0j66ux1MhQiv5ZFZGExDHk7TW8dtLC81tWIR7f9kXkcJRfN/IX6yMbIEs3
         7cK+9KfYuejKcLGC+50gA/8Pe1s717zQaa/BiHHuJQkkYAkyN9qYh+kgpaSZ3Og3tLEQ
         926+nwVznDE54n3KoLhJeIg5xzP0bff2nCQIPPgxAMYfDHJd1c+vxLINFp9HPTf/R3nm
         WKm3C1i8K49FlevaR5LzoRrBSJk2qY29wQfoX/hbhPTyXnvR8Q/OdVoa+uOO0VoNNCHz
         X+Vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=8Edg4wxIDRCJ3KljXNP5/PnbuTje5MdxQodRmNxMOMw=;
        b=AUI7bSz9HLl4NbL4wsI/lv7NIfFXdtQjrYLIomt14I+WbVMtStuOwqFyFyM+3hGeTm
         JPRpqAB70ABKmhAI6e98H+m+Z93mt7pqKoS+dcIcUPcpml8rNB62hnMpPT6gkjpGnwTE
         1SI6N8/V2BioO/+vRwDzL6H5yyu6xzgAVcnsFoxVnM6ASnRqGVkMTupNfLmaN030tJ9o
         xZyYChTAgI3jxyTtBOCi/TSouU457YLwgfj46ZR6dwkreafxiK+lKSfU+i8W+vmzpODF
         NxRFz0GlS4nnsTZlI60QI5zGFBR5o1mtgvKtt/vcs+NwEMAEHi+6YmvZSOhYx3r3Fjlm
         n75w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=iCY0E9W7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8Edg4wxIDRCJ3KljXNP5/PnbuTje5MdxQodRmNxMOMw=;
        b=mVybuWkyiq5kBLzU+fOC3uha5jvaajzJgecVGaYfyBeTmNTRq0Ida0eFcUcF/scA+j
         o1fj8ZCi2oQfjUxb2NhEjfEF4n4MvnqeFAxLqPuu8hxfVH9bQDVOLgk9k5PUa6h8/5CA
         FWoihcE8xYtOEXZV5Xf6H39kzjlyvJI1oYjFtX+rgYFWqNi0BgvQWagHJwS5fpp7/UMo
         sa7UhdtPtK0P04qxSl4G8ol3CnOgL7WwCK94Msku/pg+DABRc10DeboijC0H3UgAsEWD
         pUHcl8n46fG54lPI1wS+GldAoLQgj8N8gVWa/YOLEyiiXSS8iJOVlwVhR1wuayETABB+
         fbVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Edg4wxIDRCJ3KljXNP5/PnbuTje5MdxQodRmNxMOMw=;
        b=g/z7o2rqyBVktoZhARrvx4xEBDioaZ8Q5DYXovWF+Ym1BdV8O+Hkga9nw5Icyz6Fot
         UIV51e5V+jR8Yy3CyCb0ZUOZmRMIS/WfnvjKUKNoDjDyNgGXTvsHrWt3II2psxiCoTkj
         s7SfODp1ktBr+/gvVkM7EIkyxA+/R/NKv2Mj8YCOkedIQ4AnwAC9SA+jd4RqkbT+RJg9
         hgZBeBxeR1Ft8dndjsVplYbmZP9wpCKzNbOi0zSxK9tGbZmTcpkWwomSjC2ajXR2JOEk
         bhT80hbjcjhyHaYh0IOrXWLs0CZGFqi2k0XDq/vJ+ib3arzlTF2XDlA2sB56lVrpa3/q
         isRg==
X-Gm-Message-State: AOAM533zgA+fgV3le6jwKNKWIT9tnzMxe6CUX4zoICScl2SWNso1w6r6
	I6jweE6x2uGXXB7ilmqj/t4=
X-Google-Smtp-Source: ABdhPJyR5RUHF1M0kv5G0L7N005CuG6WH1FV9jCzfnKpIfAwNKv8qTWDEksSfRYXypNp26HJrJvDeQ==
X-Received: by 2002:a4a:be14:: with SMTP id l20mr26151489oop.46.1593678239579;
        Thu, 02 Jul 2020 01:23:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls1136545oti.11.gmail; Thu, 02 Jul
 2020 01:23:59 -0700 (PDT)
X-Received: by 2002:a9d:3b1:: with SMTP id f46mr21794686otf.154.1593678239318;
        Thu, 02 Jul 2020 01:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678239; cv=none;
        d=google.com; s=arc-20160816;
        b=auXIV+XXWCgwmSByRCus2OEqOW8wVjL9nCrEBzIs8P+mQZHYM2I1D4jxZ/f489icKv
         MJYBLKxYsUvorPDxX3XCkYQ+9NIyfNgoH8Qs4+ZF7BdvJZDrVn+Zacy26t3i7u39NXW2
         TNzWYRSvw3v6dJXEDSe8lSJJqHBSSYhDc8DCeMRTpwJpbl0iGU2VoC/lLp3OemvuH7BC
         VEhLPOWa+EfoiEKa9iHXcciMY+6wAHKODJIB2ml1Iy37Rk99vwukIse1dOVfJblJasF3
         dC0jC8EQXviKRI4nZ+MqDpClKS9DbSAUrnFFYeo/y6uMGua6azH3x7nBu8XlUy0GgOvA
         hLrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=2Ps3sR9VF/LqByb34nV2fM7x0C723HV4lrdTJSaPtuA=;
        b=c7pjiuj3iZoMMjSvFgFAhTz0GmouFl4MN3Bh873KoUPQ7NmhN8s879BgaQlnZMLsWk
         0/oOUsnE/63eCPGIG0EztxS8aDUJA9FaLPP4rX4RXpzW5Bc4kRhn3hzfDV2jD0OCQN8l
         52W/EsLA/FcFNa4s6FSVl1GEcg160n7ldvFTr98y0WL+VRj9VqX+SCCsmnMS4ClsEWy2
         4oNK6JxF8GWbzhuUmP+i0pret6MAKDrmkhExt8EGSp738W4YRv+EmHDcu39ICHj6Q7Gf
         vJGhMYSg9ec1rL6i4/EXNmDxfB3SZ4sP2DWbZZP/borEXrg6d45uqBHsJ0jUSnEUTwsi
         8ymg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=iCY0E9W7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id y16si301018oot.2.2020.07.02.01.23.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628Nt6b082238;
	Thu, 2 Jul 2020 03:23:55 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628NtLg087605;
	Thu, 2 Jul 2020 03:23:55 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:23:54 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:23:54 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYY006145;
	Thu, 2 Jul 2020 03:23:49 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Michael S.
 Tsirkin" <mst@redhat.com>,
        Jason Wang <jasowang@redhat.com>, Paolo Bonzini
	<pbonzini@redhat.com>,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Stefano
 Garzarella <sgarzare@redhat.com>
CC: <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-remoteproc@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <linux-pci@vger.kernel.org>, <kvm@vger.kernel.org>,
        <virtualization@lists.linux-foundation.org>, <netdev@vger.kernel.org>
Subject: [RFC PATCH 22/22] NTB: Describe ntb_virtio and ntb_vhost client in the documentation
Date: Thu, 2 Jul 2020 13:51:43 +0530
Message-ID: <20200702082143.25259-23-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=iCY0E9W7;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Add a blurb in Documentation/ntb.txt to describe the ntb_virtio and
ntb_vhost client

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 Documentation/driver-api/ntb.rst | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/driver-api/ntb.rst b/Documentation/driver-api/ntb.rst
index 87d1372da879..f84b81625397 100644
--- a/Documentation/driver-api/ntb.rst
+++ b/Documentation/driver-api/ntb.rst
@@ -227,6 +227,17 @@ test client is interacted with through the debugfs filesystem:
 	specified peer. That peer's interrupt's occurrence file
 	should be incremented.
 
+NTB Vhost Client (ntb\_vhost) and NTB Virtio Client (ntb\_virtio)
+------------------------------------------------------------------
+
+When two hosts are connected via NTB, one of the hosts should use NTB Vhost
+Client and the other host should use NTB Virtio Client. The NTB Vhost client
+interfaces with the Linux Vhost Framework and lets it to be used with any
+vhost client driver. The NTB Virtio client interfaces with the Linux Virtio
+Framework and lets it to be used with any virtio client driver. The Vhost
+client driver and Virtio client driver creates a logic cink to exchange data
+with each other.
+
 NTB Hardware Drivers
 ====================
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-23-kishon%40ti.com.
