Return-Path: <linux-ntb+bncBCHOPY7NVYCRBLVCVWJAMGQEDG6THMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C258D4F1A1B
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Apr 2022 22:12:31 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id g20-20020a056512119400b0044ada577e3dsf3838734lfr.1
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Apr 2022 13:12:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649103151; cv=pass;
        d=google.com; s=arc-20160816;
        b=HdkGxsz7Tvu8u8n99pabJ3Uz7nDkV7ZF/BVK5Dz2DiCN+tbDOvLMBatXhxo4IL5jV5
         ssgzLiYy640kmOD0UXsoJMEAfEc1JZI8aUx1Nubs7Bf1ckZdi9NOJUa6uhVGM6kMqFno
         gbJS2isnrUEOEfNiAXBz+NGFgG8zYP+sLJNM5Qazr/WXg1XSBVIOWW+Ccodfdx5AwmBg
         RZZQta059UToBx8UCf2NSDNQflSjtuV4d4PXnlWSangG6X7YEopX6N6dBQI1K0L+wMPI
         vAaftusEyWIRa/c/KYMk3Zi8mBlWUA8i6IOnJOwz45fC5atJX4ZPvhMcqLLaHjBHndAd
         WT4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=4f9XOAOXyOHS9aAR6mkJ7j/pgHAL4uxE+4VTLf4FaIg=;
        b=yLGHnodRcFsdFRuKYX4ZA3C0P+ug+PAnNk8rnjR/SWX14wZz+7xCbHsEaQpfTk6abq
         ELBtYrttMbPrBuRd4tV8+130tHHjmQDGSfoeGUtvbXVsrgKLBTkL6XuDzPJE/rMeniYS
         5FCnaAr75bTTkcLLTIfs8bXwpH5uhVPCVubIiSDMk/qZ+d0sK9ML1yWHtg/uDNe0vY65
         tSxQTOV3Dxig2Jikw98X8nkrDw+v6MD7lOjWngg9viKZA0s51/l6QkGLxMQvgniKwtHm
         pae6icLr0YqKVCHktH7vbNvBAa8KnntDxvYNy3MInKmZPQTjr7oMkf2+coE+lGlXGf4q
         BW6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=OLs6xoYA;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4f9XOAOXyOHS9aAR6mkJ7j/pgHAL4uxE+4VTLf4FaIg=;
        b=BevXmQ52pfmjECMk2DWa/bvJPRTaa9rJGA5r7OBMEEnh5B9eRDP8gUj/3L7jjtLYQw
         NIQYbeGSvo9idMtR+2DQkaI9m0G3DpxNfhZKfQVVgvgK5F2pXDe0epe5QAOyUvN52CKa
         XpPNEtfRF1hO4HIEruQlVGmYXWtvDQJMNMABALi5miPm2cTUikDj6kK4n7hLr/OMUD0K
         SyZ57dk4ggSt54PAsfmMVrDdw9PoWRCOkGvqqkYNVf3cBxf0pHmEmwftZrmreahf+Rk6
         YZbyNtPAMe1Cv2Ry3VHfQDEsetf/K0M/YcUy6Qw9OaPbRdOzLqgH8zcCBjvVYi5S4U5T
         0eTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4f9XOAOXyOHS9aAR6mkJ7j/pgHAL4uxE+4VTLf4FaIg=;
        b=kRG1m38HcuidSwJx1PmTvkh+tNW6dOFLJasvGrFot+bXRkQV9+wSgtawRIth7OyMNn
         Wv1iNIvOdJ3mUUEA+PT9esI4SEgsWqMl6TeIC666kc64Nvtm3o6QZBwgCHRB4Ow7+h9p
         0LrHC5t7VZC+O3/8uLd3AKfG67GMSdE2/yX112TDwGy1zTd8Fjrh1yBOXUatnH8HM5+H
         82OPjuDogG0nYLa0OOUMs7J4ixzooXlY8ivfIVua4LEQwUhDIrQV6skLxHt/h9TGhaMP
         IUzO7vdiO9do4uNYgGaMtqT0EGakpK6xLpbyw0OHo2OiI3HcgGgXc3eg4hIOrexFtyTD
         DTSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4f9XOAOXyOHS9aAR6mkJ7j/pgHAL4uxE+4VTLf4FaIg=;
        b=LAaxnnloUBbs+hDzQPmLwlODVaW9+nQbnkjIBl/PWuvj53SGsYfoH4/F21rBveCzge
         E6Plq1V8Qe+japx09ygfNH/wfmzhn3f44E/qC6lrZ9saCmFSTL+zDRWEu9hjqSUjrS2F
         v4nlmFc89SOzb4cACdiudt67s9lb8Fii4otGIlmZPBkFa7pemggCzpR+LNf/TrjEbM9e
         28njz0RYjo9EKQoDAIpBBH3iv057hQH7wDGbwZHSs0mdyTZGCrg1A695WT6or9sowgXI
         TdC0ihJ2+C0yGKeOhXZkyPy28l5xrXkbMm2AOqV/b0mS0P1hwV8bjjf9U2KwvUyuWpdI
         pJEw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531wkFJMq8FX6cgJ9vhcWmKZI0ddNjMLMTV34gtzgCtQrBXiTyPg
	glDkjuZNJC2fF1ERXajxPhE=
X-Google-Smtp-Source: ABdhPJwdYDtlnLRc2QCNROtUpEJktGJAjABt6EXt1SEtASg36jSNa+YMicYrxFiYjfGOjCaU8Mu/9g==
X-Received: by 2002:a05:6512:3b27:b0:44a:c200:61e0 with SMTP id f39-20020a0565123b2700b0044ac20061e0mr34795lfv.648.1649103151069;
        Mon, 04 Apr 2022 13:12:31 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:b951:0:b0:249:181d:ceeb with SMTP id 17-20020a2eb951000000b00249181dceebls2021204ljs.2.gmail;
 Mon, 04 Apr 2022 13:12:30 -0700 (PDT)
X-Received: by 2002:a2e:955:0:b0:249:917d:a347 with SMTP id 82-20020a2e0955000000b00249917da347mr789439ljj.126.1649103150106;
        Mon, 04 Apr 2022 13:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649103150; cv=none;
        d=google.com; s=arc-20160816;
        b=hFzWbJhAbYGRQR77ZG++VawI1efinAwZ0X8f7cJtendD+9+mWfJABpRGphkR2s9Iw3
         Tm+JboUYPWfOpk5zRt4epKs98eWBomUIs52MZDcnJ9qOGy98vXHlvGeHOxZmoveBvtko
         AZkfuB6kpnJUPmkzPtixyG88R1JHTaNfyY46T0sYNGunARV2Sf4RlMPK5VYjaXJ0issy
         wK/8FTYWO46APysl5YI3JMBqx8rmYkCdUU+MvTtb7XPwlGKmUNLUqQFAzgGtUbJS+D0C
         NEXre22XPdzFYmPpEhcSBLATAZzvRwV+RADcPFCq4Rn7SsOolUM3n4/icUQi9lyAzMzf
         Da8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=V+yE8jLxkve1ycY7ollAQEd3VziDOT8vd+4R3TOSpbg=;
        b=tXvycULm/qjf8WNcK0UNGwEcrvQA9TvygNz1oE/+RRlVFFIorXWxPL6V8v5D3ELcIL
         GqKy2o2aeKPbO9Evso4xSyUFNtGs3EkAM98x8VDaxaCHkzSjWCmbX+4RynA0pJ4XduWp
         RWD3ZMchdgiBbFfQfv8Jt8VXpDeiVYIDbzMociC/2BFrAmLCHj18X6jYDP+E1CjE83Jc
         BxEar+rrSh3fm2MD0A7gyXE44lk+OBjiiVswurh+qzuJ2SB7mQxTbi6mFne+w3yDB8i4
         bq9Mxc4LpCIVrGHw0l4/ZGkWDsMo30rKgQ2qDZVuytOdyGXuMnB7+tJ5dWHlbsZJdBbX
         d8JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=OLs6xoYA;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id k21-20020a192d15000000b0044a346b59b2si466755lfj.1.2022.04.04.13.12.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Apr 2022 13:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Received: by mail-ed1-x52b.google.com with SMTP id p23so4922025edi.8
        for <linux-ntb@googlegroups.com>; Mon, 04 Apr 2022 13:12:30 -0700 (PDT)
X-Received: by 2002:aa7:de93:0:b0:418:d700:662a with SMTP id
 j19-20020aa7de93000000b00418d700662amr1939013edv.107.1649103149333; Mon, 04
 Apr 2022 13:12:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com> <CAHrpEqTFP7SUgoTFq5Dn2-rOrAL_DCX97nRww7o_xnDJ+zDmtw@mail.gmail.com>
 <CAHrpEqTTuJhK5-kB7Q2SLt3uTvcef+ehDUA8v_f1-Zna1UN+CQ@mail.gmail.com>
In-Reply-To: <CAHrpEqTTuJhK5-kB7Q2SLt3uTvcef+ehDUA8v_f1-Zna1UN+CQ@mail.gmail.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Mon, 4 Apr 2022 15:12:17 -0500
Message-ID: <CAHrpEqRBEp=201oc4qv7YT68u+KH5EaaG=Ln_Y5ypmKagWM6Qg@mail.gmail.com>
Subject: Re: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
To: Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, kishon@ti.com, lorenzo.pieralisi@arm.com, 
	kw@linux.com, Jingoo Han <jingoohan1@gmail.com>, gustavo.pimentel@synopsys.com, 
	hongxing.zhu@nxp.com, Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, 
	ntb@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=OLs6xoYA;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::52b as
 permitted sender) smtp.mailfrom=lznuaa@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

T24gVGh1LCBNYXIgMTAsIDIwMjIgYXQgNDowNyBQTSBaaGkgTGkgPGx6bnVhYUBnbWFpbC5jb20+
IHdyb3RlOg0KPg0KPiBPbiBUaHUsIE1hciAxMCwgMjAyMiBhdCA0OjAxIFBNIFpoaSBMaSA8bHpu
dWFhQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBPbiBUdWUsIEZlYiAyMiwgMjAyMiBhdCAx
MDoyNCBBTSBGcmFuayBMaSA8RnJhbmsuTGlAbnhwLmNvbT4gd3JvdGU6DQo+ID4gPg0KPiA+ID4g
VGhpcyBpbXBsZW1lbnQgTlRCIGZ1bmN0aW9uIGZvciBQQ0llIEVQIHRvIFJDIGNvbm5lY3Rpb25z
Lg0KPiA+ID4gVGhlIGV4aXN0ZWQgbnRiIGVwZiBuZWVkIHR3byBQQ0kgRVBzIGFuZCB0d28gUENJ
IEhvc3QuDQo+ID4gPg0KPiA+ID4gVGhpcyBqdXN0IG5lZWQgRVAgdG8gUkMgY29ubmVjdGlvbnMu
DQo+ID4gPg0KPiA+ID4gICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUkCAgICAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUkA0KPiA+ID4gICAgIOKUgiAgICAgICAgICAgIOKUgiAgICAgICAgIOKU
giAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDilIINCj4gPiA+ICAgICDilJzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAgICAgICDilIIgICAgICAg
ICAgICAgICAgICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSkDQo+ID4gPiAgICAg4pSCIE5UQiAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAg
ICAgICAgICAgICAgIOKUgiBOVEIgICAgICAgICAg4pSCDQo+ID4gPiAgICAg4pSCIE5ldERldiAg
ICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiBOZXREZXYgICAgICAg
4pSCDQo+ID4gPiAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSk
ICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiA+ID4gICAgIOKUgiBOVEIgICAgICAgIOKUgiAg
ICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgTlRCICAgICAgICAgIOKUgg0KPiA+
ID4gICAgIOKUgiBUcmFuc2ZlciAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAg
ICDilIIgVHJhbnNmZXIgICAgIOKUgg0KPiA+ID4gICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilJzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4gPiA+ICAgICDi
lIIgICAgICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCICAg
ICAgICAgICAgICDilIINCj4gPiA+ICAgICDilIIgIFBDSSBOVEIgICDilIIgICAgICAgICDilIIg
ICAgICAgICAgICAgICAgICAgICAg4pSCICAgICAgICAgICAgICDilIINCj4gPiA+ICAgICDilIIg
ICAgRVBGICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCICAgICAg
ICAgICAgICDilIINCj4gPiA+ICAgICDilIIgICBEcml2ZXIgICDilIIgICAgICAgICDilIIgICAg
ICAgICAgICAgICAgICAgICAg4pSCIFBDSSBWaXJ0dWFsICDilIINCj4gPiA+ICAgICDilIIgICAg
ICAgICAgICDilIIgICAgICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilJAgICAgICDilIIgTlRCIERyaXZlciAgIOKUgg0KPiA+ID4gICAgIOKUgiAg
ICAgICAgICAgIOKUgiAgICAgICAgIOKUgiBQQ0kgRVAgTlRCICAgIOKUguKXhOKUgOKUgOKUgOKU
gOKWuuKUgiAgICAgICAgICAgICAg4pSCDQo+ID4gPiAgICAg4pSCICAgICAgICAgICAg4pSCICAg
ICAgICAg4pSCICBGTiBEcml2ZXIgICAg4pSCICAgICAg4pSCICAgICAgICAgICAgICDilIINCj4g
PiA+ICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAgICAg
ICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAg
ICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4gPiA+
ICAgICDilIIgICAgICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICDilIIgICAg
ICDilIIgICAgICAgICAgICAgIOKUgg0KPiA+ID4gICAgIOKUgiAgUENJIEJVUyAgIOKUgiDil4Ti
lIDilIDilIDilIDilIDilrog4pSCICBQQ0kgRVAgQlVTICAg4pSCICAgICAg4pSCICBWaXJ0dWFs
IFBDSSDilIINCj4gPiA+ICAgICDilIIgICAgICAgICAgICDilIIgIFBDSSAgICDilIIgICAgICAg
ICAgICAgICDilIIgICAgICDilIIgICAgIEJVUyAgICAgIOKUgg0KPiA+ID4gICAgIOKUlOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmCAgICAgICAgIOKUlOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKU
tOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPiA+ID4gICAg
ICAgICBQQ0kgUkMgICAgICAgICAgICAgICAgICAgICAgICBQQ0kgRVANCj4gPiA+DQo+ID4gPg0K
PiA+ID4NCj4gPiA+IEZyYW5rIExpICg0KToNCj4gPiA+ICAgUENJOiBkZXNpZ253YXJlLWVwOiBB
bGxvdyBwY2lfZXBjX3NldF9iYXIoKSB1cGRhdGUgaW5ib3VuZCBtYXAgYWRkcmVzcw0KPiA+ID4g
ICBOVEI6IGVwZjogQWxsb3cgbW9yZSBmbGV4aWJpbGl0eSBpbiB0aGUgbWVtb3J5IEJBUiBtYXAg
bWV0aG9kDQo+ID4gPiAgIFBDSTogZW5kcG9pbnQ6IFN1cHBvcnQgTlRCIHRyYW5zZmVyIGJldHdl
ZW4gUkMgYW5kIEVQDQo+ID4gPiAgIERvY3VtZW50YXRpb246IFBDSTogQWRkIHNwZWNpZmljYXRp
b24gZm9yIHRoZSBQQ0kgdk5UQiBmdW5jdGlvbiBkZXZpY2UNCj4gPiA+DQo+ID4NCj4NCj4gVXBk
YXRlIG50YiBtYWlsIGxpc3QNCg0KRnJpZW5kbHkgcGluZyENCg0KRnJhbmsgTGkNCg0KPg0KPiA+
DQo+ID4gPiAgRG9jdW1lbnRhdGlvbi9QQ0kvZW5kcG9pbnQvaW5kZXgucnN0ICAgICAgICAgIHwg
ICAgMiArDQo+ID4gPiAgLi4uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1mdW5jdGlvbi5yc3QgICAg
ICAgIHwgIDEyNiArKw0KPiA+ID4gIERvY3VtZW50YXRpb24vUENJL2VuZHBvaW50L3BjaS12bnRi
LWhvd3RvLnJzdCB8ICAxNjcgKysNCj4gPiA+ICBkcml2ZXJzL250Yi9ody9lcGYvbnRiX2h3X2Vw
Zi5jICAgICAgICAgICAgICAgfCAgIDQ4ICstDQo+ID4gPiAgLi4uL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWRlc2lnbndhcmUtZXAuYyAgIHwgICAxMCArLQ0KPiA+ID4gIGRyaXZlcnMvcGNpL2Vu
ZHBvaW50L2Z1bmN0aW9ucy9LY29uZmlnICAgICAgICB8ICAgMTEgKw0KPiA+ID4gIGRyaXZlcnMv
cGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9NYWtlZmlsZSAgICAgICB8ICAgIDEgKw0KPiA+ID4gIGRy
aXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXZudGIuYyB8IDE0MjQgKysrKysr
KysrKysrKysrKysNCj4gPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDE3NzUgaW5zZXJ0aW9ucygrKSwg
MTQgZGVsZXRpb25zKC0pDQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24v
UENJL2VuZHBvaW50L3BjaS12bnRiLWZ1bmN0aW9uLnJzdA0KPiA+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1ob3d0by5yc3QNCj4gPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1l
cGYtdm50Yi5jDQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IDIuMjQuMC5yYzENCj4gPiA+DQoNCi0t
IApZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRv
IHRoZSBHb29nbGUgR3JvdXBzICJsaW51eC1udGIiIGdyb3VwLgpUbyB1bnN1YnNjcmliZSBmcm9t
IHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVt
YWlsIHRvIGxpbnV4LW50Yit1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRo
aXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20v
ZC9tc2dpZC9saW51eC1udGIvQ0FIcnBFcVJCRXAlM0QyMDFvYzRxdjdZVDY4dSUyQktINUVhYUcl
M0RMbl9ZNXlwbUthZ1dNNlFnJTQwbWFpbC5nbWFpbC5jb20uCg==
