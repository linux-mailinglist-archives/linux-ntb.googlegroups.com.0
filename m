Return-Path: <linux-ntb+bncBCOOP4VF5IDRBU4BUL3AKGQEVMKGECA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F2D1DF3EC
	for <lists+linux-ntb@lfdr.de>; Sat, 23 May 2020 03:48:04 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id n1sf4986605vke.6
        for <lists+linux-ntb@lfdr.de>; Fri, 22 May 2020 18:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590198483; cv=pass;
        d=google.com; s=arc-20160816;
        b=PsXzHO9oOydNKD0nbrgtCrPPoO3YTJDlmcGqdszylswqm3cesVjY6WtP70GeURx0JT
         WK7DaPH+/5naREVg82CqsdCKqaxh0lj2xw3Xc276hERzE09svWOSFHEMAagLLe4sl17U
         dsBG+vn+J+YDgsYwdGsnffpwmDfC5Y5uYzuPM3gudLuMMt2BDPgUY5JDncoIncsKpJE7
         b934P/gOmD44R2hMGPsfeMFARR5cbhnWe2RTz38deRzKI5uM1h7R1VZiqmrPpzRT8iKl
         LdD7n/TbaDywjVgu9TprkoMXLTdPbNcTU65qZBa/De3F9XdN5dve9ss1FWxyMNvS3mvv
         oNDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=wJwQEXKzhepA+RC8u6ld3o0PHJuvZL6mM0Bi58rVaKI=;
        b=ISjS4SAdW0dJObYqllg3PTdV7PYuEB9/L3wJInCpoGb5QuWTi3yFQXbPUe3QtrM2WM
         UlFCQZvKOvwzrzaPRqWYNMKLmbbgWFgP4uUw4yRwJ8BsEeXgL+W9SvTcNyqtko7S8x7a
         COR7Y7y/NFsuOqJD9X5zydMkoc9kXKHbuxLp6zv0UY6o7QnK0hoFmblm4X1k7bDe8vpG
         lnMAYNehvolOtdnUYhosMgee3X0hwUQh8uQ1YQ0rm+ZsfD01v5RdRhdab1HYt5QBVm0h
         JzBHo5n9if9qHMBctLuFkRr8xJ3xqYZMYc/OJ9jxBlbPU/yHJSR3DHHEIqaonW912t1H
         UGxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=S4YFKaPj;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wJwQEXKzhepA+RC8u6ld3o0PHJuvZL6mM0Bi58rVaKI=;
        b=bTK7YurXC5Z9nJa75EUt5Dq2rLmbdFryY0UGSn67rAFkI95RzbkFehQmtI5uLbyy3I
         bbJOmRxzXpLcSqqHyll/spM6ErWPrlz+ihTjM0TrbiztVBC1y18rDtf5zGRyiJnN+3jo
         YPzOrKpmv1Sp08ZS+x9w+UgcdGsjJAunkheDY4GLdPOkzwxmA16bHImbeg15Rif8AOLu
         TTBUTpjTtDULjRnt0MDQyrKnqII/qH80BaZV+yYQjxXPWNLkoxQulFEYqQyAHq0vTCEJ
         6Sa8HO96JvJ1fcR+GW6RMuZmnj8ftph7KPdVtlODUBDbU/WYg5XsIo9MTPCvutBdYbaw
         eITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wJwQEXKzhepA+RC8u6ld3o0PHJuvZL6mM0Bi58rVaKI=;
        b=PN/MMrtfXo3TW1/cb3bNscfiuAds+uXQkn38xwRGMRTMC0uH+wbtDEDj69jDTJ1Fta
         8cnQ/lT2OL1OSOTP0TgKPHbf10sDh1Ez0yr6UxTyOp0u3LKZiScVT+54G01UguQOtpz/
         eHqfPVEWVojnEFgxt+9avwsH9XarbBQ+KeeKA2HdFzq7EpfI54yuMzc6Vxukzie/nSDG
         XkwUiUinFKY7SjokzhTdM8p3zzs1Vn7ub5jR3nSj++j/BAcz+5M8o+phtJUYCNpAPa/7
         9RbZDWvseQ6PEo+dj1psHWcJSrYKIztBvvyZC2r46iCZ5UClob4o7LgCovGXtF3vqg28
         0yEw==
X-Gm-Message-State: AOAM533gmJIJNGssk3YtON06o/CUex6QAohZvLHqUCjvJbfdQwGH5t7u
	I/8QdUEG1xsVtdvRlovzX2M=
X-Google-Smtp-Source: ABdhPJwmyLH2eGbogYSs3F3c9Dbx6OHACfBHMGW+ASncphleIYVewhxnF4Iodvhy65MvcvtrfGGg7w==
X-Received: by 2002:a1f:8cc3:: with SMTP id o186mr13017261vkd.18.1590198483528;
        Fri, 22 May 2020 18:48:03 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:6581:: with SMTP id z123ls317405vsb.9.gmail; Fri, 22 May
 2020 18:48:03 -0700 (PDT)
X-Received: by 2002:a67:df86:: with SMTP id x6mr12729758vsk.94.1590198483099;
        Fri, 22 May 2020 18:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590198483; cv=none;
        d=google.com; s=arc-20160816;
        b=VaxqFnUEQX1HSHdydlq992l5HXQ/49R0UlJPGdvcWjmpSSBhHSBQHlIGCuuFMGvZCR
         i5YpSP1ad51BsWxrqx6t2HKHFsMh778dcCF/H3s75iqe7Auu6NJPyKbWyfRUBl5AJT0O
         ZtVJSrWBMxbOC/XMYTlV6PqRt25m6F1PX2oH/1MCWWmCgy9e8ErDAGSdDlLChTUQgu7d
         SHDsUG+YLEybRvryVwLQiwDYHXB0x7R0d1q8pFYZLB7ebooz5AZKqLMCAmZYXVWLYJW2
         e1GDK0v+iVgc98PVgDFET8YX0bQzT83H44+uBILjUQeDrAwjw1WdforxN3XV2yvCmpbU
         PluA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=yiS4eaMZLr5N5lmPgiZnhfhO2vD8vhckjgLQdVGEMjo=;
        b=NZWdO355zVK1yghDIQL39nT5JKF1f7DvD9zJI6f4dZMEvSTDgmjkB33MSeM8twLqE6
         Nu4zPAXC6QcaMbaieojaVk+USLeZIB4BtzUEcPJPVJBtTZCdnMbOZ39gURzSwsD5ndBT
         7EzIVlf5l1fcMr/cBwhPPQNlO7RiU69wQPzHq8D+tEm5lzxeY4pdf8ESk8yYqM0BWNkD
         J0idxZ33zXYnqdU7crvLlzHRgmLOUfsRwWXWsVShuPWGAGIvqIxyNHhQ4AfpK9wWejCe
         Zh5FR5jF+a3iqGcTGWlSK/ZPFSX9XUAFOhT3FRgi88P5Z9N1ymX/5Dc7zrjOiy3mF7l3
         zm6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=S4YFKaPj;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id 137si790164vkw.5.2020.05.22.18.48.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 May 2020 18:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04N1lrnx103671;
	Fri, 22 May 2020 20:47:53 -0500
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04N1lrQL067401
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 22 May 2020 20:47:53 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 May 2020 20:47:52 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 May 2020 20:47:52 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04N1lmIK029381;
	Fri, 22 May 2020 20:47:48 -0500
Subject: Re: [PATCH 00/19] Implement NTB Controller using multiple PCI EP
To: Rob Herring <robh+dt@kernel.org>
CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet <corbet@lwn.net>, PCI <linux-pci@vger.kernel.org>,
        Linux Doc Mailing List
	<linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20200514145927.17555-1-kishon@ti.com>
 <CAL_JsqKxe5FtZfiQKcQFFLOM5F52kx-q8vZspPTXhcWg+3rJvQ@mail.gmail.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <d0c4c813-2af7-7fd4-e401-6fd5de69d4e4@ti.com>
Date: Sat, 23 May 2020 07:17:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKxe5FtZfiQKcQFFLOM5F52kx-q8vZspPTXhcWg+3rJvQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=S4YFKaPj;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
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

Hi Rob,

On 5/22/2020 9:41 PM, Rob Herring wrote:
> On Thu, May 14, 2020 at 8:59 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> This series is about implementing SW defined NTB using
>> multiple endpoint instances. This series has been tested using
>> 2 endpoint instances in J7 connected to two DRA7 boards. However there
>> is nothing platform specific for the NTB functionality.
>>
>> This was presented in Linux Plumbers Conference. The presentation
>> can be found @ [1]
> 
> I'd like to know why putting this into DT is better than configfs.
> Does it solve some problem? Doing things in userspace is so much
> easier and more flexible than modifying and updating a DT.

It's a lot cleaner to have an endpoint function bound to two different endpoint
controller using device tree than configfs.

+    epf_bus {
+      compatible = "pci-epf-bus";
+
+      func@0 {
+        compatible = "pci-epf-ntb";
+        epcs = <&pcie0_ep>, <&pcie1_ep>;
+        epc-names = "primary", "secondary";
+        reg = <0>;
+        epf,vendor-id = /bits/ 16 <0x104c>;
+        epf,device-id = /bits/ 16 <0xb00d>;
+        num-mws = <4>;
+        mws-size = <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>;
+      };

For device tree, just using phandles is enough and the driver can easily parse
DT to get EPCs bound to the endpoint function
+        epcs = <&pcie0_ep>, <&pcie1_ep>;
+        epc-names = "primary", "secondary";

This would be
ln -s functions/pci-epf-ntb/func1 controllers/2900000.pcie-ep/
ln -s functions/pci-epf-ntb/func1 controllers/2910000.pcie-ep/

pci_epc_epf_link() should then maintain the order of EPC bound to EPF and
designate one as PRIMARY_INTERFACE and the second as SECONDARY_INTERFACE.
pci_epf_bind() should be made to behave differently for NTB case.

While the standard properties (like vendorid, deviceid) has configfs entries,
additional logic would be required for adding function specific fields like
num-mws and mws-size above.

While all this support could be added in configfs, it looks simpler to
represent then in DT.

> 
> I don't really think the PCI endpoint stuff is mature enough to be
> putting into DT either.

I think this will anyways come when we have to export real HW peripherals to
the remote HOST using EP controller.

Thanks
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d0c4c813-2af7-7fd4-e401-6fd5de69d4e4%40ti.com.
