Return-Path: <linux-ntb+bncBDQ5ZPPL7UHRBWGJWLWAKGQEL6RARJY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id E59B8BF209
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:45:28 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id k184sf1055200wmk.1
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:45:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569498328; cv=pass;
        d=google.com; s=arc-20160816;
        b=e7QuplqXy+N94MQXda2EpY1y3+SP1LOymzfj44x5MI4w8uRvvmuUMaHZ2N+IHXXdp9
         DVWu1CV2BMMxdUH95dXn7tT6CoY3g5pO0wxhelHdg4lseSRIIwLIaMUZC0Ddpcm2eIBw
         scGQdoHM7pFXQtloU+u2qwYCyFMxsgfmJ7cln7eU3DUu2ahvTivDijDzPrBXM55U/fRs
         oAKwXNLZS2QwwGvnpdUfZXzuQN0Q/AGDIo51J68BZgCfRE3jcL+Qm3a1TSpsPB2LIm/K
         t9wV7RsIOE6QzqwepSqljZI/MltT6GC1oFO3SfiNhB80DVEMs0QwyOL9yeKoN1AJ8zve
         /x9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:dkim-filter:sender:dkim-signature;
        bh=pF0+mbmox3/hdhm9lKi7CSON+12AJdm0oLhwT/rCBR8=;
        b=DGKrU7eo9CcKIpdhWn+lOBPdtZbfldbh819HaZDk0xWcmoakPmBKNLsQMTuGHYjMJy
         e0kObxfCwz0RUdZTneHWo5mJPbBgWal3P247S0IbXQGr/VWHsFiv4m+xI11M1/qqqM+q
         ISPwFggmaDIEKVEhSNF+5oERIEYJmO5d1/YfCN9QZhQBlCk3wajbnb7Hf+4JlPSEGQGa
         SA4S1KNEKjZ/qeSvMTzkyzWLi2adUCwOln9H3IHlwwl2v8tvW+4xe/bQU9QlpzddRLu3
         bf4H5zzup3SSIXDvG4Fo8/IrwyQmCYGgqBilWT6/3IhDYI72XnIhBO8fsFXXGxy3UVFN
         2l7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@desy.de header.s=default header.b=eYHKOjia;
       spf=pass (google.com: domain of ludwig.petrosyan@desy.de designates 2001:638:700:1038::1:9a as permitted sender) smtp.mailfrom=ludwig.petrosyan@desy.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pF0+mbmox3/hdhm9lKi7CSON+12AJdm0oLhwT/rCBR8=;
        b=d04uINHtfath0VXblLrHZF1jptuQF3yzdbJgYAzLyYFg3SDUW3VZ7LYKxQjIFBCLRt
         +UEUV793y3mCCn2aFCYi/DeZ82OamhJgiyHcDkhOk5EEDzxsIb1ots60Oaj2l+hWMpld
         5qnppQsnkUQzmWcgKRewlCaE9g3IgC+1mwSInIYDwTduRFLg2FMjYC2TVHOJCIY1AC9j
         DRUaO5bjm4qiyzthLJ49LFF01tjD+bqyNQ4v6HEuXo4wcJ/QIv1HMeSLcN3VoPrVZdjS
         +ZSosa9YMFp7YDs0EKgh/qCOOKagNfuvyc6ueElEhQSV7fAqtiif7rG1UwrSqyEEIHrG
         Z2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pF0+mbmox3/hdhm9lKi7CSON+12AJdm0oLhwT/rCBR8=;
        b=mwfJaqzcS0Sq6yx2i+luhmna89tCfIO8wV1huuj2y7YBRfCP6TfXiUWSXqsYu6HAcy
         VHfZZvzJzGP9rrZdtKB6Y+oqnFANP3g6fbnSmVSgOqRoeYFjyplmPoPxhrsNfQ3X/bHj
         R6Cdlx/x9Kj9sZf3l+AqnZzRgmfroaAF9OJffoPZcppM+qqow952IVfp3pEpxrVtGjjF
         e06y2J5iWLzhnIuL9PmBu/ZtPmiog0ZCofsyv0X9kWXR27E73WxCTUOQbrj1EsWzSvbP
         IpC3h2T0zxrL6jZlUg4kB3hQeD/IL8Z2iEQ9Vuk3QQQZUlm7QZ976+ctqwETtTtfpcZz
         lEtg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAURQGMo0ECF+lRW94/QfJSzczq8tO+z/lHETRYsY+87DjIoHlE5
	1H42bwsEjhsCGVpFYmNUhVc=
X-Google-Smtp-Source: APXvYqzdO79D31SDF7SR/opMVgN+H80mmovZIaW0f/DKkDdhuTJ1HkV9eIvfzbPgVK5QzFhd6pnvWA==
X-Received: by 2002:a1c:cf8c:: with SMTP id f134mr2759425wmg.174.1569498328582;
        Thu, 26 Sep 2019 04:45:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a7b:ce16:: with SMTP id m22ls795037wmc.5.canary-gmail; Thu,
 26 Sep 2019 04:45:28 -0700 (PDT)
X-Received: by 2002:a1c:3182:: with SMTP id x124mr2848402wmx.168.1569498328114;
        Thu, 26 Sep 2019 04:45:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569498328; cv=none;
        d=google.com; s=arc-20160816;
        b=qHX7YbRWIRoXya/C7m51RT5fHRLB79CnrtgPG+qPdv/p8BDYT3GoTstG1iHUfvzfqw
         Z/aEQvInWe1JoRilsGNu6mHZhx5gLwzeUHWZUEJ9uIV8XrEswPdPS/Go3lmVFevhVPb2
         owKVHgJBQjLdGpQg6tsthstw1NsnAvh/sUefEXGo95tw9bRg9cs2A3NpVS3NwbWC4s+I
         sgSm2RpjQFMjKm1/N04QmtDEHl2WZptJ/kBF6+9dGStfdjbf0aYF/I2ls8WgpHstGt0u
         cjvcNw1iDH6SnokwYQjVfKqlpy+V2gyMT9qt+Q4nBREUvMyKYZl6P7T1gHszIm9roH7N
         Uzog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature:dkim-filter;
        bh=f5IZx8Hv017A/h6QC83qVzhsPWe2wg9LZWsYWObbI2s=;
        b=VMXNynzG9+zFvdrKVt90DnDPCKH15Z6pGwyyDQT/GRWgqwtHxt9nWnGGhMYyM7mSbu
         2OMSP3TNx/BN8clonUAOOHpChcPRnc+h4rsmz57Yiu7vifbthifwEsk79mkTiXKff6Dz
         VYiirCAEJGqYRlCZF1gs0pGnUTz08l+9s43zBtdmu+NWMAc6XW2cUOsRV64j1E1AsLlV
         Qctu/rT8WGDhPuTEfZSHtE1SxUtv0R42xDbNwuwN0KqmvjXOzkpEySRzte1ymFLrBMN2
         vrq7jyXn2k5Vn5AnStdcHJMo8pWkDg3wVtmA8q39+x08f8PhcXvNz7jhwTGtGFiCUpUW
         zOog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@desy.de header.s=default header.b=eYHKOjia;
       spf=pass (google.com: domain of ludwig.petrosyan@desy.de designates 2001:638:700:1038::1:9a as permitted sender) smtp.mailfrom=ludwig.petrosyan@desy.de
Received: from smtp-o-1.desy.de (smtp-o-1.desy.de. [2001:638:700:1038::1:9a])
        by gmr-mx.google.com with ESMTPS id 5si503573wmf.1.2019.09.26.04.45.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:45:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ludwig.petrosyan@desy.de designates 2001:638:700:1038::1:9a as permitted sender) client-ip=2001:638:700:1038::1:9a;
Received: from smtp-buf-1.desy.de (smtp-buf-1.desy.de [IPv6:2001:638:700:1038::1:a4])
	by smtp-o-1.desy.de (Postfix) with ESMTP id 9AB63E01F9
	for <linux-ntb@googlegroups.com>; Thu, 26 Sep 2019 13:45:27 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp-o-1.desy.de 9AB63E01F9
Received: from smtp-m-1.desy.de (smtp-m-1.desy.de [IPv6:2001:638:700:1038::1:81])
	by smtp-buf-1.desy.de (Postfix) with ESMTP id 86D9C1201DA;
	Thu, 26 Sep 2019 13:45:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at desy.de
Received: from [131.169.146.36] (mcspetros.desy.de [131.169.146.36])
	by smtp-intra-1.desy.de (Postfix) with ESMTP id 3985FC008A;
	Thu, 26 Sep 2019 13:45:27 +0200 (CEST)
Subject: Re: [RFC PATCH 19/21] PCI: Add TI J721E device to pci ids
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Rob Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pci@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-ntb@googlegroups.com
References: <20190926112933.8922-1-kishon@ti.com>
 <20190926112933.8922-20-kishon@ti.com>
From: Ludwig Petrosyan <ludwig.petrosyan@desy.de>
Message-ID: <4832a387-c18a-8c04-98a0-cfc46db09243@desy.de>
Date: Thu, 26 Sep 2019 13:45:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190926112933.8922-20-kishon@ti.com>
Content-Type: multipart/alternative;
 boundary="------------8D4AF1803FC2630C605144F9"
Content-Language: en-GB
X-Original-Sender: ludwig.petrosyan@desy.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@desy.de header.s=default header.b=eYHKOjia;       spf=pass
 (google.com: domain of ludwig.petrosyan@desy.de designates
 2001:638:700:1038::1:9a as permitted sender) smtp.mailfrom=ludwig.petrosyan@desy.de
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

This is a multi-part message in MIME format.
--------------8D4AF1803FC2630C605144F9
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Dear Linux kernel group

We are using MTCA systems with Ubuntu Linux and PCIe as a central bus

We got some problem:

some times the memories of the PCIe endpoints not mapped and the lspci=20
gives strange otput:

uname -a : Linux mcscpudev6 4.15.0-45-generic #48~16.04.1-Ubuntu SMP Tue=20
Jan 29 18:03:48 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux


/lspci=C2=A0 -vvvv -s 05:00.0//
//05:00.0 Signal processing controller: Xilinx Corporation Device 0088//
//=C2=A0=C2=A0=C2=A0 Subsystem: Device 3300:0088//
//=C2=A0=C2=A0=C2=A0 Physical Slot: 4//
//=C2=A0=C2=A0=C2=A0 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGAS=
noop-=20
ParErr- Stepping- SERR- FastB2B- DisINTx+//
//=C2=A0=C2=A0=C2=A0 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfas=
t >TAbort-=20
<TAbort- <MAbort- >SERR- <PERR- INTx-//
//=C2=A0=C2=A0=C2=A0 Latency: 0, Cache Line Size: 64 bytes//
//=C2=A0=C2=A0=C2=A0 Interrupt: pin A routed to IRQ 223//
//_Region 0: Memory at <ignored> (32-bit, non-prefetchable)_/_/
/__/=C2=A0=C2=A0=C2=A0 Region 1: Memory at <ignored> (32-bit, non-prefetcha=
ble)/__/
/__/=C2=A0=C2=A0=C2=A0 Region 2: Memory at <ignored> (32-bit, non-prefetcha=
ble)/_/
//=C2=A0=C2=A0=C2=A0 Expansion ROM at 71c00000 [disabled] [size=3D1M]//
//=C2=A0=C2=A0=C2=A0 Capabilities: [40] Power Management version 3//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Flags: PMEClk- DSI- D1- D2- AuxCurr=
ent=3D0mA=20
PME(D0-,D1-,D2-,D3hot-,D3cold-)//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Status: D0 NoSoftRst- PME-Enable- D=
Sel=3D0 DScale=3D0 PME-//
//=C2=A0=C2=A0=C2=A0 Capabilities: [48] MSI: Enable+ Count=3D1/1 Maskable- =
64bit+//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Address: 00000000fee00ef8=C2=A0 Dat=
a: 0000//
//=C2=A0=C2=A0=C2=A0 Capabilities: [60] Express (v1) Endpoint, MSI 00//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCap:=C2=A0=C2=A0=C2=A0 MaxPayloa=
d 512 bytes, PhantFunc 1, Latency L0s=20
unlimited, L1 unlimited//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ExtTag+ AttnBtn-=
 AttnInd- PwrInd- RBE+ FLReset-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCtl:=C2=A0=C2=A0=C2=A0 Report er=
rors: Correctable- Non-Fatal- Fatal-=20
Unsupported-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 RlxdOrd+ ExtTag+=
 PhantFunc- AuxPwr- NoSnoop+//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 MaxPayload 256 b=
ytes, MaxReadReq 512 bytes//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevSta:=C2=A0=C2=A0=C2=A0 CorrErr- =
UncorrErr- FatalErr- UnsuppReq- AuxPwr-=20
TransPend-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCap:=C2=A0=C2=A0=C2=A0 Port #0, =
Speed 2.5GT/s, Width x4, ASPM L0s, Exit=20
Latency L0s unlimited, L1 unlimited//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ClockPM- Surpris=
e- LLActRep- BwNot- ASPMOptComp-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCtl:=C2=A0=C2=A0=C2=A0 ASPM Disa=
bled; RCB 64 bytes Disabled- CommClk-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ExtSynch- ClockP=
M- AutWidDis- BWInt- AutBWInt-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkSta:=C2=A0=C2=A0=C2=A0 Speed 2.5=
GT/s, Width x4, TrErr- Train- SlotClk+=20
DLActive- BWMgmt- ABWMgmt-//
//=C2=A0=C2=A0=C2=A0 Capabilities: [100 v1] Device Serial Number 00-00-00-0=
0-00-00-00-00//
//=C2=A0=C2=A0=C2=A0 Kernel driver in use: pciedev//
//=C2=A0=C2=A0=C2=A0 Kernel modules: pciedev//

/

but lspci with -H1:

/lspci -H1 -vvvv -s 05:00.0//
//05:00.0 Signal processing controller: Xilinx Corporation Device 0088//
//=C2=A0=C2=A0=C2=A0 Subsystem: Device 3300:0088//
//=C2=A0=C2=A0=C2=A0 Control: I/O+ Mem+ BusMaster+ SpecCycle- MemWINV- VGAS=
noop-=20
ParErr- Stepping- SERR- FastB2B- DisINTx+//
//=C2=A0=C2=A0=C2=A0 Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=3Dfas=
t >TAbort-=20
<TAbort- <MAbort- >SERR- <PERR- INTx-//
//=C2=A0=C2=A0=C2=A0 Latency: 0, Cache Line Size: 64 bytes//
//=C2=A0=C2=A0=C2=A0 Interrupt: pin A routed to IRQ 10//
////_Region 0: Memory at d8000000 (32-bit, non-prefetchable)_//_
_//_=C2=A0=C2=A0=C2=A0 Region 1: Memory at d4000000 (32-bit, non-prefetchab=
le)_//_
_//_=C2=A0=C2=A0=C2=A0 Region 2: Memory at dc000000 (32-bit, non-prefetchab=
le)_//
//=C2=A0=C2=A0=C2=A0 Expansion ROM at dd000000 [disabled]//
//=C2=A0=C2=A0=C2=A0 Capabilities: [40] Power Management version 3//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Flags: PMEClk- DSI- D1- D2- AuxCurr=
ent=3D0mA=20
PME(D0-,D1-,D2-,D3hot-,D3cold-)//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Status: D0 NoSoftRst- PME-Enable- D=
Sel=3D0 DScale=3D0 PME-//
//=C2=A0=C2=A0=C2=A0 Capabilities: [48] MSI: Enable+ Count=3D1/1 Maskable- =
64bit+//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Address: 00000000fee00ef8=C2=A0 Dat=
a: 0000//
//=C2=A0=C2=A0=C2=A0 Capabilities: [60] Express (v1) Endpoint, MSI 00//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCap:=C2=A0=C2=A0=C2=A0 MaxPayloa=
d 512 bytes, PhantFunc 1, Latency L0s=20
unlimited, L1 unlimited//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ExtTag+ AttnBtn-=
 AttnInd- PwrInd- RBE+ FLReset-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCtl:=C2=A0=C2=A0=C2=A0 Report er=
rors: Correctable- Non-Fatal- Fatal-=20
Unsupported-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 RlxdOrd+ ExtTag+=
 PhantFunc- AuxPwr- NoSnoop+//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 MaxPayload 256 b=
ytes, MaxReadReq 512 bytes//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevSta:=C2=A0=C2=A0=C2=A0 CorrErr- =
UncorrErr- FatalErr- UnsuppReq- AuxPwr-=20
TransPend-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCap:=C2=A0=C2=A0=C2=A0 Port #0, =
Speed 2.5GT/s, Width x4, ASPM L0s, Exit=20
Latency L0s unlimited, L1 unlimited//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ClockPM- Surpris=
e- LLActRep- BwNot- ASPMOptComp-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCtl:=C2=A0=C2=A0=C2=A0 ASPM Disa=
bled; RCB 64 bytes Disabled- CommClk-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ExtSynch- ClockP=
M- AutWidDis- BWInt- AutBWInt-//
//=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkSta:=C2=A0=C2=A0=C2=A0 Speed 2.5=
GT/s, Width x4, TrErr- Train- SlotClk+=20
DLActive- BWMgmt- ABWMgmt-/

adding pci=3Drealloc=3Doff solves with problem.

Is it in general a good idea to use "pci=3Drealloc=3Doff"?

And what the problem? Would some body so kinde to explane what the problem?=
!


with best regards

Ludwig Petrosyan


On 9/26/19 1:29 PM, Kishon Vijay Abraham I wrote:
> Add TI J721E device to the pci id database. Since this device has
> a configurable PCIe endpoint, it could be used with different
> drivers.
>
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>   include/linux/pci_ids.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
> index d157983b84cf..b2820a834a5e 100644
> --- a/include/linux/pci_ids.h
> +++ b/include/linux/pci_ids.h
> @@ -868,6 +868,7 @@
>   #define PCI_DEVICE_ID_TI_X620		0xac8d
>   #define PCI_DEVICE_ID_TI_X420		0xac8e
>   #define PCI_DEVICE_ID_TI_XX20_FM	0xac8f
> +#define PCI_DEVICE_ID_TI_J721E		0xb00d
>   #define PCI_DEVICE_ID_TI_DRA74x		0xb500
>   #define PCI_DEVICE_ID_TI_DRA72x		0xb501
>  =20

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/4832a387-c18a-8c04-98a0-cfc46db09243%40desy.de.

--------------8D4AF1803FC2630C605144F9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div class=3D"moz-text-html" lang=3D"x-unicode">
      <p>Dear Linux kernel group</p>
      <p>We are using MTCA systems with Ubuntu Linux and PCIe as a
        central bus</p>
      <p>We got some problem:</p>
      <p>some times the memories of the PCIe endpoints not mapped and
        the lspci gives strange otput:</p>
      <p>uname -a : Linux mcscpudev6 4.15.0-45-generic
        #48~16.04.1-Ubuntu SMP Tue Jan 29 18:03:48 UTC 2019 x86_64
        x86_64 x86_64 GNU/Linux</p>
      <p><br>
      </p>
      <p><i>lspci=C2=A0 -vvvv -s 05:00.0</i><i><br>
        </i><i>05:00.0 Signal processing controller: Xilinx Corporation
          Device 0088</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Subsystem: Device 3300:0088</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Physical Slot: 4</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Control: I/O+ Mem+ BusMaster+ SpecCycle- =
MemWINV-
          VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Status: Cap+ 66MHz- UDF- FastB2B- ParErr-=
 DEVSEL=3Dfast
          &gt;TAbort- &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-</i>=
<i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Latency: 0, Cache Line Size: 64 bytes</i>=
<i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Interrupt: pin A routed to IRQ 223</i><i>=
<br>
        </i><i>=C2=A0=C2=A0=C2=A0 <u>Region 0: Memory at &lt;ignored&gt; (3=
2-bit,
            non-prefetchable)</u></i><u><i><br>
          </i></u><u><i>=C2=A0=C2=A0=C2=A0 Region 1: Memory at &lt;ignored&=
gt; (32-bit,
            non-prefetchable)</i></u><u><i><br>
          </i></u><u><i>=C2=A0=C2=A0=C2=A0 Region 2: Memory at &lt;ignored&=
gt; (32-bit,
            non-prefetchable)</i></u><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Expansion ROM at 71c00000 [disabled] [siz=
e=3D1M]</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Capabilities: [40] Power Management versi=
on 3</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Flags: PMEClk- DSI- D1=
- D2- AuxCurrent=3D0mA
          PME(D0-,D1-,D2-,D3hot-,D3cold-)</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Status: D0 NoSoftRst- =
PME-Enable- DSel=3D0 DScale=3D0
          PME-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Capabilities: [48] MSI: Enable+ Count=3D1=
/1 Maskable-
          64bit+</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Address: 00000000fee00=
ef8=C2=A0 Data: 0000</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Capabilities: [60] Express (v1) Endpoint,=
 MSI 00</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCap:=C2=A0=C2=A0=C2=
=A0 MaxPayload 512 bytes, PhantFunc 1,
          Latency L0s unlimited, L1 unlimited</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Ext=
Tag+ AttnBtn- AttnInd- PwrInd- RBE+
          FLReset-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCtl:=C2=A0=C2=A0=C2=
=A0 Report errors: Correctable- Non-Fatal-
          Fatal- Unsupported-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Rlx=
dOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop+</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Max=
Payload 256 bytes, MaxReadReq 512 bytes</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevSta:=C2=A0=C2=A0=C2=
=A0 CorrErr- UncorrErr- FatalErr-
          UnsuppReq- AuxPwr- TransPend-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCap:=C2=A0=C2=A0=C2=
=A0 Port #0, Speed 2.5GT/s, Width x4, ASPM
          L0s, Exit Latency L0s unlimited, L1 unlimited</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Clo=
ckPM- Surprise- LLActRep- BwNot-
          ASPMOptComp-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCtl:=C2=A0=C2=A0=C2=
=A0 ASPM Disabled; RCB 64 bytes Disabled-
          CommClk-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Ext=
Synch- ClockPM- AutWidDis- BWInt-
          AutBWInt-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkSta:=C2=A0=C2=A0=C2=
=A0 Speed 2.5GT/s, Width x4, TrErr- Train-
          SlotClk+ DLActive- BWMgmt- ABWMgmt-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Capabilities: [100 v1] Device Serial Numb=
er
          00-00-00-00-00-00-00-00</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Kernel driver in use: pciedev</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Kernel modules: pciedev</i><i><br>
          <br>
        </i></p>
      <p>but lspci with -H1:</p>
      <p><i>lspci -H1 -vvvv -s 05:00.0</i><i><br>
        </i><i>05:00.0 Signal processing controller: Xilinx Corporation
          Device 0088</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Subsystem: Device 3300:0088</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Control: I/O+ Mem+ BusMaster+ SpecCycle- =
MemWINV-
          VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Status: Cap+ 66MHz- UDF- FastB2B- ParErr-=
 DEVSEL=3Dfast
          &gt;TAbort- &lt;TAbort- &lt;MAbort- &gt;SERR- &lt;PERR- INTx-</i>=
<i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Latency: 0, Cache Line Size: 64 bytes</i>=
<i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Interrupt: pin A routed to IRQ 10</i><i><=
br>
        </i><i>=C2=A0=C2=A0=C2=A0 </i><i><u>Region 0: Memory at d8000000 (3=
2-bit,
            non-prefetchable)</u></i><i><u><br>
          </u></i><i><u>=C2=A0=C2=A0=C2=A0 Region 1: Memory at d4000000 (32=
-bit,
            non-prefetchable)</u></i><i><u><br>
          </u></i><i><u>=C2=A0=C2=A0=C2=A0 Region 2: Memory at dc000000 (32=
-bit,
            non-prefetchable)</u></i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Expansion ROM at dd000000 [disabled]</i><=
i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Capabilities: [40] Power Management versi=
on 3</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Flags: PMEClk- DSI- D1=
- D2- AuxCurrent=3D0mA
          PME(D0-,D1-,D2-,D3hot-,D3cold-)</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Status: D0 NoSoftRst- =
PME-Enable- DSel=3D0 DScale=3D0
          PME-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Capabilities: [48] MSI: Enable+ Count=3D1=
/1 Maskable-
          64bit+</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Address: 00000000fee00=
ef8=C2=A0 Data: 0000</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 Capabilities: [60] Express (v1) Endpoint,=
 MSI 00</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCap:=C2=A0=C2=A0=C2=
=A0 MaxPayload 512 bytes, PhantFunc 1,
          Latency L0s unlimited, L1 unlimited</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Ext=
Tag+ AttnBtn- AttnInd- PwrInd- RBE+
          FLReset-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevCtl:=C2=A0=C2=A0=C2=
=A0 Report errors: Correctable- Non-Fatal-
          Fatal- Unsupported-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Rlx=
dOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop+</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Max=
Payload 256 bytes, MaxReadReq 512 bytes</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 DevSta:=C2=A0=C2=A0=C2=
=A0 CorrErr- UncorrErr- FatalErr-
          UnsuppReq- AuxPwr- TransPend-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCap:=C2=A0=C2=A0=C2=
=A0 Port #0, Speed 2.5GT/s, Width x4, ASPM
          L0s, Exit Latency L0s unlimited, L1 unlimited</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Clo=
ckPM- Surprise- LLActRep- BwNot-
          ASPMOptComp-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkCtl:=C2=A0=C2=A0=C2=
=A0 ASPM Disabled; RCB 64 bytes Disabled-
          CommClk-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Ext=
Synch- ClockPM- AutWidDis- BWInt-
          AutBWInt-</i><i><br>
        </i><i>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 LnkSta:=C2=A0=C2=A0=C2=
=A0 Speed 2.5GT/s, Width x4, TrErr- Train-
          SlotClk+ DLActive- BWMgmt- ABWMgmt-</i><br>
        <br>
        adding pci=3Drealloc=3Doff solves with problem.</p>
      <p>Is it in general a good idea to use "pci=3Drealloc=3Doff"?</p>
      <p>And what the problem? Would some body so kinde to explane what
        the problem?!</p>
      <p><br>
      </p>
      <p>with best regards</p>
      <p>Ludwig Petrosyan<br>
      </p>
      <p><br>
      </p>
    </div>
    <div class=3D"moz-cite-prefix">On 9/26/19 1:29 PM, Kishon Vijay
      Abraham I wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:20190926112933.8922-20-kishon@ti.com">
      <pre class=3D"moz-quote-pre" wrap=3D"">Add TI J721E device to the pci=
 id database. Since this device has
a configurable PCIe endpoint, it could be used with different
drivers.

Signed-off-by: Kishon Vijay Abraham I <a class=3D"moz-txt-link-rfc2396E" hr=
ef=3D"mailto:kishon@ti.com">&lt;kishon@ti.com&gt;</a>
---
 include/linux/pci_ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index d157983b84cf..b2820a834a5e 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -868,6 +868,7 @@
 #define PCI_DEVICE_ID_TI_X620		0xac8d
 #define PCI_DEVICE_ID_TI_X420		0xac8e
 #define PCI_DEVICE_ID_TI_XX20_FM	0xac8f
+#define PCI_DEVICE_ID_TI_J721E		0xb00d
 #define PCI_DEVICE_ID_TI_DRA74x		0xb500
 #define PCI_DEVICE_ID_TI_DRA72x		0xb501
=20
</pre>
    </blockquote>
  </body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/4832a387-c18a-8c04-98a0-cfc46db09243%40desy.de?utm_med=
ium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-nt=
b/4832a387-c18a-8c04-98a0-cfc46db09243%40desy.de</a>.<br />

--------------8D4AF1803FC2630C605144F9--
