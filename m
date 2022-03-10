Return-Path: <linux-ntb+bncBCHOPY7NVYCRBNHKVGIQMGQEQIGCQVI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 492944D5413
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 23:01:25 +0100 (CET)
Received: by mail-ej1-x639.google.com with SMTP id lf15-20020a170906ae4f00b006da86a43346sf3827176ejb.14
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 14:01:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646949685; cv=pass;
        d=google.com; s=arc-20160816;
        b=cUL0hDVpMPzIQ4ORETOnnpRwZNUIWEWk2RaZUeQMPoDzbL2aEbBvLrKC1aLTBSHTbo
         RNRga/jwT8Hk7It/SiT8oZKgrnlJ41ucd/v13sk8xlMmQot7viiykch6AnUTitgwNC1r
         PsUuQdlgqM5CyYe83AODf2rJ1egQyVBhcUdqIPLXq8z2BFuHVFgOxITV8+dh8Q3Vfrqg
         uqFwInWHj29qJ+vQp9lhWM83eIc0LQAXcozdXrZ8W5H/wUeAg9MaLZePhvqzq06Fy+H8
         TO0ekOkUDzd0Tkx8NJhcidoRGgMnEx9bK8cofZsXHJbX8n85/WOkmzg9FsYyPdbF6kX+
         UQhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=Ppa+nUpaFnbE24TXj98JOb0bwZXuMFyh4Sau74UaobQ=;
        b=iXhPaTzA68ivf8YJUikHjJN/8xt/D9qNxeEeCVu1BD1Z/csuXrIlNRgmVf5YX8csAX
         m2yLQ9Jhf08b3ix58hz/G19kT5IkEARV9/TcSOFdMUyiVsOpavAcOxvOAbuWq/C+ZfiV
         zrBRzVJx4KAovBS9ndk0NUxKz7FuquZ+bmDrcyEQJyAvpqUThCERDZ1wwRMlDdPQ1YVz
         X7pWDgiPOP169tIY+Ea/t5xeBu4lLPPpzeeMY6AO3KXVNYS/GZXbj9PMucyChOvplq6N
         j/7Ifhbo83TSQhH+7qO1x7Z0USKc2k+DBxYKKtJTYqsJhIee18xAPozumcMeHSU0Xj86
         7foQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=otiQWDzQ;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ppa+nUpaFnbE24TXj98JOb0bwZXuMFyh4Sau74UaobQ=;
        b=CWy12pKHwBq3w3rlobeyzvYjNxWVRrsU3fKWo804rah6Ioved55FPvcdi5zfmABdLY
         vCkmTdMv/gqWYroWj5p3egXoni/x2u9moP2UkMNhcro+PDLNYD5+zekaHJ42X90mK7Wc
         2L5RZkI+bIzdV2DzQ1pyskVGxY6JOFPjodhYbEDBtQkY4yktxe8Ey7/vfizOVoEk7p12
         j4JdGAjWZjP2CvTKIFwFDGYdhF4FEzyhy4XxRWPFzuw1HBcZE7ouYlbchXRAD4GKJKjo
         /1kozAhmDu1Lhkw2ajpAtEOy5mZI9vzTSzNj3eCm4SVH3qexSnYxv5GFsNILDpgRc1tX
         8e6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ppa+nUpaFnbE24TXj98JOb0bwZXuMFyh4Sau74UaobQ=;
        b=JcDP3eDO+JuaWtVOhKPZn+a/OG7b12CPAzVKwYTAf68IzeelaXkeR0Xs1VeiDAovb9
         rHUX+qHXgpY7VyeZkOqxI0vG0H3VmvZPQd9O3UlbA8r6Gy5jKVFv0m418U0vhK4Y7tXL
         6V30cD3cnV1DXUMrQjDPQHDPuoF7wWnyfbV5GjetGBi1v5ihHIZSu+uIpB2vVr67jHfY
         dayMMzMCufKji8N5fsf7o2vb+UGGr5UFSLb88LeaSBVPiAmbz35ESgZe7tDHnnMWmNCe
         IZFvTxRUZfk95DXRugArVuJR29tJGvaTCxcAGrHCRc2221rIfg2PWQzKVwlX1mbqWLLN
         gV3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ppa+nUpaFnbE24TXj98JOb0bwZXuMFyh4Sau74UaobQ=;
        b=RksF0LWxExfNfE3RmP8YUj7loOE+wufge2F9fQ8Yvf3ZfidEDjtyA6PhYzPsbIetCF
         a/jVZ88/B82/ZFY5gLManAl4EsdBQfslSmSVO90qjj06J6jkDyPIb3rc2LR9/X5gw+sn
         QbnED97R1KKqFv6/4hFOy3fWoqmhYJ8+qwRjaDxmeZlNjIBCsaHmlu9pOZnBpdtb/CeE
         FM/KuTfBalVM+oFCmeEBoghqjYb0ujV2h+eYONOI4E9+EiR12krvOFyMvxE8yhfewkGX
         a3OOXHd6v89TAWgQisqmigbkgdwiW23Wf7CGuXRMJylvSonS/SMKrZEt1Eevze71ea0p
         X60w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533/FOVSfQ/7PEG/wg0Fow4V+DGxLV/WPNSbp9Mb2TVuX94OXRME
	JB9Yu2qWv5CDqpqO4T4Ys7k=
X-Google-Smtp-Source: ABdhPJz2eMrON7YBuReCXq3vgXqpi1Wgs/utynmwyiXe898hR3MFbx7Xrd1qD5t6rbwf7itU0PsfOg==
X-Received: by 2002:a17:907:3ea6:b0:6db:4b61:b46b with SMTP id hs38-20020a1709073ea600b006db4b61b46bmr6311102ejc.402.1646949684868;
        Thu, 10 Mar 2022 14:01:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:94cb:b0:6cf:7ef7:f6fd with SMTP id
 dn11-20020a17090794cb00b006cf7ef7f6fdls3840587ejc.1.gmail; Thu, 10 Mar 2022
 14:01:23 -0800 (PST)
X-Received: by 2002:a17:906:2991:b0:6cc:fc18:f10c with SMTP id x17-20020a170906299100b006ccfc18f10cmr6061056eje.744.1646949683725;
        Thu, 10 Mar 2022 14:01:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646949683; cv=none;
        d=google.com; s=arc-20160816;
        b=i3gxalqim+SsKZ5MbxbTLG2vBhGyvpMzcVsmyCGpSUnSzvd44pg75nJannzDYLaCrc
         ElVkHQhvz/JJyew/4ghLsFKm5mRSflCk+krrTqhy/rJgd5wuKTZsEf7hUxSLUA/Ar25P
         PONdV0KqzgTp62YU7w+Qz9V+RVjepmsf57WcgkkOlCw/yMpqrJW31xLL4Ie3e/EAkiyH
         R7HoAIu70rZIwTLNFGX+YqB4T7WC5bNzxeprfAhCOWVexZVApWzWGWK80qprr2tkThZr
         yjjHGugw7PnfZ+xsEB5PVQQLmaoWNG4S2/ZJXpgRV4v0BghcKdzyl9MbYP0zgATT61AB
         KLAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=BWdFMs6xgab+RuaIxJQnFK+7CxewzPCWBuyRE87cDO4=;
        b=KIOatLOOH7wKz+JYems4YeGkLOzGN9XV8ooYA7vwtvFwXlp6ynxHYEsrxow3dFWevc
         4pCK8u50Ekq7awfaC55GqcFQjxK7fNF2Rp3rx3tLtRHu57TjfH0bn213zi5QYqNHMGhO
         WqibttTfC9wF0VpItgnku6qPjWsKu43MPznUS/k9z/eBSWqcyDYGaqbDwpjvCNpdMvqm
         hi6EJ3KqblxSnAEPo4ymDq2sR0AGLvnJx/Szt4tmgxl2USg8IwwwCjvHjOsScSMnWq0I
         /d1slE043B5uC0o9uPtX3Rl3QxLnXy3sZXvPHeKjyx6vn3KsLWNpcbTjwjJ0susTNcis
         9Ocw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=otiQWDzQ;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id ay11-20020a056402202b00b004167027061asi342793edb.2.2022.03.10.14.01.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 14:01:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Received: by mail-ej1-x634.google.com with SMTP id d10so15079712eje.10
        for <linux-ntb@googlegroups.com>; Thu, 10 Mar 2022 14:01:23 -0800 (PST)
X-Received: by 2002:a17:906:dc90:b0:6da:a5b1:7879 with SMTP id
 cs16-20020a170906dc9000b006daa5b17879mr5960086ejc.433.1646949683234; Thu, 10
 Mar 2022 14:01:23 -0800 (PST)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com>
In-Reply-To: <20220222162355.32369-1-Frank.Li@nxp.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Thu, 10 Mar 2022 16:01:11 -0600
Message-ID: <CAHrpEqTFP7SUgoTFq5Dn2-rOrAL_DCX97nRww7o_xnDJ+zDmtw@mail.gmail.com>
Subject: Re: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
To: Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, kishon@ti.com, lorenzo.pieralisi@arm.com, 
	kw@linux.com, Jingoo Han <jingoohan1@gmail.com>, gustavo.pimentel@synopsys.com, 
	hongxing.zhu@nxp.com, Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=otiQWDzQ;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::634 as
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

T24gVHVlLCBGZWIgMjIsIDIwMjIgYXQgMTA6MjQgQU0gRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5j
b20+IHdyb3RlOg0KPg0KPiBUaGlzIGltcGxlbWVudCBOVEIgZnVuY3Rpb24gZm9yIFBDSWUgRVAg
dG8gUkMgY29ubmVjdGlvbnMuDQo+IFRoZSBleGlzdGVkIG50YiBlcGYgbmVlZCB0d28gUENJIEVQ
cyBhbmQgdHdvIFBDSSBIb3N0Lg0KPg0KPiBUaGlzIGp1c3QgbmVlZCBFUCB0byBSQyBjb25uZWN0
aW9ucy4NCj4NCj4gICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
kCAgICAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUkA0KPiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIOKUgg0KPiAgICAg4pSc4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAg
ICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiAg
ICAg4pSCIE5UQiAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKU
giBOVEIgICAgICAgICAg4pSCDQo+ICAgICDilIIgTmV0RGV2ICAgICDilIIgICAgICAgICDilIIg
ICAgICAgICAgICAgICAgICAgICAg4pSCIE5ldERldiAgICAgICDilIINCj4gICAgIOKUnOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUgiAgICAgICAgICAg
ICAgICAgICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lKQNCj4gICAgIOKUgiBOVEIgICAgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAg
ICAgICDilIIgTlRCICAgICAgICAgIOKUgg0KPiAgICAg4pSCIFRyYW5zZmVyICAg4pSCICAgICAg
ICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiBUcmFuc2ZlciAgICAg4pSCDQo+ICAgICDi
lJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAgICAgICDilIIgICAg
ICAgICAgICAgICAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSkDQo+ICAgICDilIIgICAgICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAg
ICAgICAgICAgICAg4pSCICAgICAgICAgICAgICDilIINCj4gICAgIOKUgiAgUENJIE5UQiAgIOKU
giAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgICAgICAgICAgICAgIOKUgg0K
PiAgICAg4pSCICAgIEVQRiAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAg
IOKUgiAgICAgICAgICAgICAg4pSCDQo+ICAgICDilIIgICBEcml2ZXIgICDilIIgICAgICAgICDi
lIIgICAgICAgICAgICAgICAgICAgICAg4pSCIFBDSSBWaXJ0dWFsICDilIINCj4gICAgIOKUgiAg
ICAgICAgICAgIOKUgiAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUkCAgICAgIOKUgiBOVEIgRHJpdmVyICAg4pSCDQo+ICAgICDilIIgICAg
ICAgICAgICDilIIgICAgICAgICDilIIgUENJIEVQIE5UQiAgICDilILil4TilIDilIDilIDilIDi
lrrilIIgICAgICAgICAgICAgIOKUgg0KPiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg
4pSCICBGTiBEcml2ZXIgICAg4pSCICAgICAg4pSCICAgICAgICAgICAgICDilIINCj4gICAgIOKU
nOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUnOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgIOKUnOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiAgICAg4pSCICAgICAg
ICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAg4pSCICAgICAg4pSCICAgICAgICAg
ICAgICDilIINCj4gICAgIOKUgiAgUENJIEJVUyAgIOKUgiDil4TilIDilIDilIDilIDilIDilrog
4pSCICBQQ0kgRVAgQlVTICAg4pSCICAgICAg4pSCICBWaXJ0dWFsIFBDSSDilIINCj4gICAgIOKU
giAgICAgICAgICAgIOKUgiAgUENJICAgIOKUgiAgICAgICAgICAgICAgIOKUgiAgICAgIOKUgiAg
ICAgQlVTICAgICAg4pSCDQo+ICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilJggICAgICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilJgNCj4gICAgICAgICBQQ0kgUkMgICAgICAgICAgICAgICAgICAg
ICAgICBQQ0kgRVANCj4NCj4NCj4NCj4gRnJhbmsgTGkgKDQpOg0KPiAgIFBDSTogZGVzaWdud2Fy
ZS1lcDogQWxsb3cgcGNpX2VwY19zZXRfYmFyKCkgdXBkYXRlIGluYm91bmQgbWFwIGFkZHJlc3MN
Cj4gICBOVEI6IGVwZjogQWxsb3cgbW9yZSBmbGV4aWJpbGl0eSBpbiB0aGUgbWVtb3J5IEJBUiBt
YXAgbWV0aG9kDQo+ICAgUENJOiBlbmRwb2ludDogU3VwcG9ydCBOVEIgdHJhbnNmZXIgYmV0d2Vl
biBSQyBhbmQgRVANCj4gICBEb2N1bWVudGF0aW9uOiBQQ0k6IEFkZCBzcGVjaWZpY2F0aW9uIGZv
ciB0aGUgUENJIHZOVEIgZnVuY3Rpb24gZGV2aWNlDQo+DQoNClBpbmcNCg0KPiAgRG9jdW1lbnRh
dGlvbi9QQ0kvZW5kcG9pbnQvaW5kZXgucnN0ICAgICAgICAgIHwgICAgMiArDQo+ICAuLi4vUENJ
L2VuZHBvaW50L3BjaS12bnRiLWZ1bmN0aW9uLnJzdCAgICAgICAgfCAgMTI2ICsrDQo+ICBEb2N1
bWVudGF0aW9uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1ob3d0by5yc3QgfCAgMTY3ICsrDQo+ICBk
cml2ZXJzL250Yi9ody9lcGYvbnRiX2h3X2VwZi5jICAgICAgICAgICAgICAgfCAgIDQ4ICstDQo+
ICAuLi4vcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jICAgfCAgIDEwICst
DQo+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvS2NvbmZpZyAgICAgICAgfCAgIDEx
ICsNCj4gIGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9NYWtlZmlsZSAgICAgICB8ICAg
IDEgKw0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdm50Yi5jIHwg
MTQyNCArKysrKysrKysrKysrKysrKw0KPiAgOCBmaWxlcyBjaGFuZ2VkLCAxNzc1IGluc2VydGlv
bnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRp
b24vUENJL2VuZHBvaW50L3BjaS12bnRiLWZ1bmN0aW9uLnJzdA0KPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IERvY3VtZW50YXRpb24vUENJL2VuZHBvaW50L3BjaS12bnRiLWhvd3RvLnJzdA0KPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXZu
dGIuYw0KPg0KPiAtLQ0KPiAyLjI0LjAucmMxDQo+DQoNCi0tIApZb3UgcmVjZWl2ZWQgdGhpcyBt
ZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICJs
aW51eC1udGIiIGdyb3VwLgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3Ag
cmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIGxpbnV4LW50Yit1bnN1
YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUg
d2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9saW51eC1udGIvQ0FI
cnBFcVRGUDdTVWdvVEZxNURuMi1yT3JBTF9EQ1g5N25Sd3c3b194bkRKJTJCekRtdHclNDBtYWls
LmdtYWlsLmNvbS4K
