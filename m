Return-Path: <linux-ntb+bncBCOOP4VF5IDRBZ6CWLWAKGQEASUTJWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD9BF156
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:30:50 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id r35sf1240094pgb.2
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:30:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497448; cv=pass;
        d=google.com; s=arc-20160816;
        b=oFK3orgebCup1iZgcg75teJbpUfAOxPRjLa/wDtT6HdRm/QN586kIUp9fulKAJAutG
         ZOnlMhki7x+X+cUNzc5jufcPL0edmF6qEcXklvR2NQmfcwBGPMGVe7d0zkoPXJJpGnd9
         7d0YaLQN2YAHHA6BVcyJ2WCoSC9rEU6NDT04K4iCydF5lFFie6j5kXZXZhpJdyD6Zuea
         BBaETnp/xPTwCtZ1ERy3QPdCMKGU2lMnEXQC885WlCl1DOTtQ3/vt1X00G3hk9iswt8C
         selIkHNCZMfFsD73qS553f2kBcfWtvEsdmnXn3ksHuC0G/Fsb7VlmfzQVblGRm0I9B/j
         ssKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bkcj72wz3/os+OUX+69vf8Un/ddRgZkfsLQJAN6sLYk=;
        b=UJ0iyqMrEF98HBNRX2PhKgzeqwhQLoadTAmywfsotg66ygplb656x+7X20lmJFnrl5
         Pe5KYRWoEogz6FPQE3rFn5OlCO0RLABXLIU9xNofPrSPQsroE78LO5W5qwPVmyf8Cn1S
         85VT675yGTGUX+iXjSl2SXCcO8QuVkqX5er+8recQkUeU1xxH5XrA/XJDg0Q+hPvojf6
         ZWOk4rD3NraSa+1KymZyGtzr/NkGrKDsq/D3ErZgGS54TyLz8KTijCaHQAehzXo2jh4e
         OxSebtnjiuKeBuNUVkWK5z6C7tQbGAnfrRZ3KjL4G+jdv276dxSm84KL6vvZO4+bRAZk
         dgNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Uf7JmbNG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bkcj72wz3/os+OUX+69vf8Un/ddRgZkfsLQJAN6sLYk=;
        b=JZ6azZGjiLaMsgL4Sfx98633piyreuthsCtc7/6520z8etiaTxu61dL9B85a4raIAQ
         hqOYtzLzkYfQGmpEwVmP99kjowNrk1RYhOwFTBE9lnlKTZjeOD6XSVmKA8UgH1H/m5HA
         gqFhe2gNHoMD+dq3g8LETV9dFklQVaVbzrZCn4tGibra47lq1vfHOHFh8j+zUTNHmEKX
         wPOJ/2K4eztsRdz50Aro9ANu9Ee1O39FQaV5RgZLZQHcaBTu9rrOr0ExvQ9aLHN1N3Fd
         3bChB7dNX/7SJzMiv0LOMGo6VlFAJM6avsJIb/POhwfBZigKl+HhGsM8Ne8VEtLCEjhL
         teCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bkcj72wz3/os+OUX+69vf8Un/ddRgZkfsLQJAN6sLYk=;
        b=b+ceOW38L+gukDWe0Sty27m1nu058KRdSn2t5ny7NfBkBtT0tr3JgVjU2tWuKZ39NV
         tOtJNCeZEWSleuLyZgD67HQOg+8A1o8qcANTawlKC+oPgQQMjc0cg8h26n3QL9HWQ4TF
         UEMIgMNIw81OgTwCa2zh7HMXKFLMq5CmH/8NPk3YL8lkU0sCtkPaSRnV4u3MwhPN6+Eb
         3K4Iz1VEaCtXTC+NWzVZsrMuP6eeKjfcU4H+YKboy71ZkQB/eJNwUJ4SvzOGbyYUmLPh
         wUFE7Mc7IC+H+TFXQelfs8Th1Dp24LYyOZ4g49lCfFNfCyi3YhmWLo4yfyKyuynmrTu4
         tIRg==
X-Gm-Message-State: APjAAAX++b3LjOHkfSC9Ml8QZ1r67ZVodLThBFSbzS4TaN3RZX15A+iw
	nQvpRD59BnSuB4pOKNGM/Ug=
X-Google-Smtp-Source: APXvYqwp4qonUn7zVz0L85n6OjG+NMxHUBs6nzoTyCTOba+OL3F56v1zVdxoh+D4lYfxZjPjyk5Oyw==
X-Received: by 2002:a17:902:6bc5:: with SMTP id m5mr3390035plt.169.1569497447840;
        Thu, 26 Sep 2019 04:30:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:8d86:: with SMTP id v6ls648580plo.11.gmail; Thu, 26
 Sep 2019 04:30:47 -0700 (PDT)
X-Received: by 2002:a17:90a:360b:: with SMTP id s11mr3147073pjb.30.1569497447561;
        Thu, 26 Sep 2019 04:30:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497447; cv=none;
        d=google.com; s=arc-20160816;
        b=vQRfeNY7E1Urghvu1kw9jmHO+6jDTvjbiW8yjjiHMsZM/bGzHQhr0BHhraKiE0q90u
         i2igOGxPY4xt4HgAyKdkBujMmPrEe6l9V+YwRF7j7byijkSgRZ4M6Xe3i4XZKUb3cjXH
         Y3GpLwA3LRH3X2CTpCppqnLaQVFHhNm2TLtuCue5JSjUUUNZESc8sgh91EebkV/9fETQ
         FluNg1CC4j7cNp8yXzjKpzI0CHBj2HmOurG6lP2/cs0nzhLHE3UGtqfNct/j9j3wr8GV
         GcrAqSDbzCBpTsu2vCc3lJ7Ng7Uc/0v1QbSfDdcOhrdZfgBTRqS4OYWuaOzbQm26O3xr
         xy1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=w4V1m2OIe5LxeaAVTxkVjAlE3hYEXz8xzCprrL6Lk3E=;
        b=h5UVxVL3DEDQ6CPFWCmFMMCSl9+7ObJQSralA7lrfSs6Okii9IkW7Oi0syrWremeEt
         oVjetOy6qvXDmiqXwV3REpVhhlo+I4Cy5DNSR+uJkG/HR83UF3Cg6kFcv5L3ZRDNyjIm
         ITrOxf+UFN61jWj/5a4zHXx2POdFnVqFlJPqyzj/sndyqQq46NqECau/X0QWqUaNsPmh
         zr4SUFdrVeR8ytDnkW5/9jLfhcj7lLEOieR6pT5F9CRjIeHNB/oQ3bxdPsSjWtCekuYr
         EH0ziigs44tH/ap9JiFZldjuMDP1yRrPEKFVJS1OKcxQ9lwNTyeLeuDLeIupB5V1FIz0
         Pb9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Uf7JmbNG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id m186si69147pga.4.2019.09.26.04.30.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:30:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUg2U025799;
	Thu, 26 Sep 2019 06:30:42 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBUg3m090981
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:30:42 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:30:42 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:30:35 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTjt069017;
	Thu, 26 Sep 2019 06:30:38 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Rob
 Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>, <kishon@ti.com>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
Subject: [RFC PATCH 02/21] dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF Device
Date: Thu, 26 Sep 2019 16:59:14 +0530
Message-ID: <20190926112933.8922-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Uf7JmbNG;       spf=pass
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

Add device tree bindings for PCI endpoint function device. The
nodes for PCI endpoint function device should be attached to
PCI endpoint function bus.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/pci/endpoint/pci-epf.txt         | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt

diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt b/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
new file mode 100644
index 000000000000..f006395fd526
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
@@ -0,0 +1,28 @@
+PCI Endpoint Function Device
+
+This describes the generic bindings to be used when a device has to be
+exposed to the remote host over PCIe. The device could be an actual
+peripheral in the platform or a virtual device created by the software.
+
+epcs : phandle to the endpoint controller device
+epc-names : the names of the endpoint controller device corresponding
+	    to the EPCs present in the *epcs* phandle
+vendor-id: used to identify device manufacturer
+device-id: used to identify a particular device
+baseclass-code: used to classify the type of function the device performs
+subclass-code: used to identify more specifically the function of the device
+subsys-vendor-id: used to identify vendor of the add-in card or subsystem
+subsys-id: used to specify an id that is specific to a vendor
+
+Example:
+Following is an example of NTB device exposed to the remote host.
+
+ntb {
+	compatible = "pci-epf-ntb";
+	epcs = <&pcie0_ep>, <&pcie1_ep>;
+	epc-names = "primary", "secondary";
+	vendor-id = /bits/ 16 <0x104c>;
+	device-id = /bits/ 16 <0xb00d>;
+	num-mws = <4>;
+	mws-size = <0x100000>, <0x100000>, <0x100000>, <0x100000>;
+};
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-3-kishon%40ti.com.
