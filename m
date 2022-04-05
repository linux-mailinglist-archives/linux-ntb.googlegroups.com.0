Return-Path: <linux-ntb+bncBCOOP4VF5IDRBLVWWCJAMGQEX6LSUTQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 8461B4F29C0
	for <lists+linux-ntb@lfdr.de>; Tue,  5 Apr 2022 12:34:24 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id l6-20020a170903120600b0014f43ba55f3sf4787575plh.11
        for <lists+linux-ntb@lfdr.de>; Tue, 05 Apr 2022 03:34:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649154863; cv=pass;
        d=google.com; s=arc-20160816;
        b=f2XIEUyQ0VyFGilfSXcL1WOsq6qWSEH4/rbBUclUoH7wNAvJlA2H4sK1LSSgmuHcYY
         gEIlaF89FBOgrmahcDUf/bJ2aJT57bGhWw0SU103tRCIyaHspxeYWyqWBsaO5iuFnKCS
         WLgSRnVP1J63UAoZMh+LIoCcI4wECWmntdEcLvB0V857VaZopWxZKMtZed1CbP/4dPzQ
         EOiR9wJgoB8lH9lBNTT6x5AIoDVDMqrUEZO2yIQ/H04/j2/krSYUfGioK5vB88B+2/P6
         7qECCxkUHEv7Cgsz2QQ8i2AcfU1pTLd46n7ZMdTjF9OpRdkFW8ByOPC6R46GypE1QNi/
         No7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=pvLOYJcm3lEW3qt2pdQsCVQmbRDVuL27Qd9aSUyBH6I=;
        b=REyReBpw/21TIfRY1pFgZjDhMqp2Lxos4O1tzyqhCEvPH4kCuxEDeBel66YHbOoIvQ
         6TnufNQuqaYxNMGQWOaJJX5fa5ApuAflF4k0ZUb1ayQz/C3BmUIv3671rInB1rFKtua9
         amB/HvrsdZxt4l8XKCzIs6ZxeQvD6xQJMpdfYszszWQ6aVVOIf7dHdtz2lipE5QdNFjE
         y9/kJ9Pv7oplv4bRbG0dZCUO+v9is4fCo7ICV2tX0KjgwhW12bPZbdnrB4nojADwaY/k
         rMu0wmFCMiURrxH6fR5pies176m140F2+6CEN7sJcc0ezge2iyLiUhrwvo/qJqRrNGra
         DYfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cftCXFu1;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pvLOYJcm3lEW3qt2pdQsCVQmbRDVuL27Qd9aSUyBH6I=;
        b=h/lUz1fsuLr+wWOoGIthpvhkvwJVNAp0t3D7BvWh2mP1e2aDnC6Gn86oMPLvi3FW9k
         lVELySYi9NNue/0peW3xRczcxOCZibTQiO0VCQ56vTmhVaJEw+9ajUUZw9QnGnfe3QV4
         RBlnkrbtuwP30hYOkOamqOKbi41Ma+X7WYZukV0EAI8g3Q7llK5IqG400WJ7m8QnsE4g
         qZ9jbLY1Svm3LlN+8+HMLJ7N90S3JBUsclrA+cHkdfDBRMsAHCJl32ENP/2cMSXKQc7q
         BpdAPrhsBH42NVGyOZK1c3adYHRBNEYSu4T0G6ypu3zr8ToRu4KQxAT2JN5+cUy1pH+9
         wI5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pvLOYJcm3lEW3qt2pdQsCVQmbRDVuL27Qd9aSUyBH6I=;
        b=458nRGI+YC6tgBnfROZMhVBLtoUy0gvavvbDsqIBztc/xFFVH7SUTBhfzY1mNUF68j
         i0JkwhYFwKlWfi9iZu9j+SpdQ4MnvwV8ga/DClsLHOe3UndHdPm31sETGLDmFUNeguC0
         n71EqsibolmgAb28Czowt7tru7kgiyC/POAv66Uj9RUy5hatMfk5A1UJoZ2o+9aam2po
         DMq+os7FPTPb2wXbQYWqj6STfkolPk4BdiamnAdh4mwBCmn7wtz49JPhynDlZMzqINFx
         /zknNFOID8QKs38zwufld70fnKjziahuxe1mbtMBGS6K/G+PhNZV2Br3OZKCWTyD0Ste
         6B8g==
X-Gm-Message-State: AOAM530LTCGcN616r4MYWNOyV+5v0umiSjJ/wEEer28QxCOyTWMdv1xT
	LUR2Ic9a1u6HAgd7Kj8NwHs=
X-Google-Smtp-Source: ABdhPJyIemsqt9V5CwfijVsZMyW/sORDY4H+GPsm/ikcTNjr0F23DW7eyLilqbHl21s4aALhL7SVcg==
X-Received: by 2002:a63:195f:0:b0:399:1f0e:a21d with SMTP id 31-20020a63195f000000b003991f0ea21dmr2256559pgz.393.1649154862792;
        Tue, 05 Apr 2022 03:34:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:182:b0:154:42fe:624f with SMTP id
 z2-20020a170903018200b0015442fe624fls12395914plg.9.gmail; Tue, 05 Apr 2022
 03:34:22 -0700 (PDT)
X-Received: by 2002:a17:90b:1281:b0:1ca:b7e8:1084 with SMTP id fw1-20020a17090b128100b001cab7e81084mr3324627pjb.196.1649154862236;
        Tue, 05 Apr 2022 03:34:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649154862; cv=none;
        d=google.com; s=arc-20160816;
        b=RaBdG39cHI339PEJzt5c+ebtgP0rtK/BMItFxe+m/EbvEChNvL+gL2XMWKgTkbWYmg
         4O8v6f0LrlmvepOGly14sCCaAjmJ6H/Cd7oV1CkStXISMLogeYbaAa6mLKQoeCpVAOT/
         fsiw1VaRCFDXsKtmxcvofwAAFGkNd9HypAfmXaSgYTw++1K9pgDQSMSu9OjhM27KiNgj
         9yAMwjH3v4Dpm6fGDRT7GC4WxMH3yJG1h/WLxYobYTdcJIPe6/b3i6qV5qEsivilny7u
         vnPuUP8ZA/r5r5fuDO4DZrPYcoQip8v+xLNCVWyTqGjnnTFpT64GphzduTGrIzCtFRmV
         EnXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DR2dofC4k+YCFwpS6FJDhDTV9xef2CHosonkTows2EE=;
        b=XNMP/znMQiuOoUL/8td/VcanEbBJvjdMjqB+XFSfyuGhI7mxX0y4uLOTrnUpHpeMrO
         0gryml4zR1pxeLyftqenAxfwVPmUnS3qePfplBnsxCm5RmEvRmfH1oFSK56Mjbk6Qs6N
         e6fNp00L5eArLk9DCiHq8qWaYv4Pqyg7S5Sbu04sxdOf4Aa7F7e5XHyjs1wOgO5FDzPG
         TAa9a+Gc4IFc81mX/F9TWu8ICwt+ZrDZZZ9ir9Ife3fItsSjKt52uafdcPm78HPXscni
         sa7EAszTno/PJWL5aTtFICe3Q4b4aLD0OCUav/xsgJko6ylGK0RlQWlSNkutmLgMkuPR
         mi2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cftCXFu1;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id v1-20020a17090a00c100b001c7a31f2a4fsi155924pjd.1.2022.04.05.03.34.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Apr 2022 03:34:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 235AYIMC119521;
	Tue, 5 Apr 2022 05:34:18 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 235AYIha017000
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 5 Apr 2022 05:34:18 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 5
 Apr 2022 05:34:17 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 5 Apr 2022 05:34:17 -0500
Received: from [10.250.235.92] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 235AYDoE108818;
	Tue, 5 Apr 2022 05:34:13 -0500
Subject: Re: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
To: Frank Li <Frank.Li@nxp.com>, <helgaas@kernel.org>,
        <lorenzo.pieralisi@arm.com>, <kw@linux.com>, <jingoohan1@gmail.com>,
        <gustavo.pimentel@synopsys.com>, <lznuaa@gmail.com>,
        <hongxing.zhu@nxp.com>, <jdmason@kudzu.us>, <dave.jiang@intel.com>,
        <allenbh@gmail.com>
CC: <linux-ntb@googlegroups.com>, <linux-pci@vger.kernel.org>
References: <20220222162355.32369-1-Frank.Li@nxp.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <fa2ab3cf-1508-bbeb-47af-8b2d47904b20@ti.com>
Date: Tue, 5 Apr 2022 16:04:12 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20220222162355.32369-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: base64
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=cftCXFu1;       spf=pass
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

SGkgRnJhbmsgTGksDQoNCk9uIDIyLzAyLzIyIDk6NTMgcG0sIEZyYW5rIExpIHdyb3RlOg0KPiBU
aGlzIGltcGxlbWVudCBOVEIgZnVuY3Rpb24gZm9yIFBDSWUgRVAgdG8gUkMgY29ubmVjdGlvbnMu
DQo+IFRoZSBleGlzdGVkIG50YiBlcGYgbmVlZCB0d28gUENJIEVQcyBhbmQgdHdvIFBDSSBIb3N0
Lg0KDQpBcyBJIGhhZCBlYXJsaWVyIG1lbnRpb25lZCBpbiBbMV0sIElNSE8gaWRlYWwgc29sdXRp
b24gd291bGQgYmUgYnVpbGQgb24gdmlydGlvDQpsYXllciBpbnN0ZWFkIG9mIHRyeWluZyB0byBi
dWlsZCBvbiBOVEIgbGF5ZXIgKHdoaWNoIGlzIHNwZWNpZmljIHRvIFJDPC0+UkMNCmNvbW11bmlj
YXRpb24pLg0KDQpBcmUgdGhlcmUgYW55IHNwZWNpZmljIHJlYXNvbnMgZm9yIG5vdCB0YWtpbmcg
dGhhdCBwYXRoPw0KDQpUaGFua3MsDQpLaXNob24NCg0KWzFdIC0+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL3IvNDU5NzQ1ZDEtOWZlNy1lNzkyLTM1MzItMzNlZTk1NTJiYzRkQHRpLmNvbQ0KPiAN
Cj4gVGhpcyBqdXN0IG5lZWQgRVAgdG8gUkMgY29ubmVjdGlvbnMuDQo+IA0KPiAgICAg4pSM4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQICAgICAgICAg4pSM4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQo+ICAgICDi
lIIgICAgICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAg4pSCDQo+ICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilKQgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQo+ICAgICDilIIgTlRCICAgICAgICDilIIg
ICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCIE5UQiAgICAgICAgICDilIINCj4g
ICAgIOKUgiBOZXREZXYgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDi
lIIgTmV0RGV2ICAgICAgIOKUgg0KPiAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSkICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUnOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiAgICAg4pSCIE5UQiAgICAg
ICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiBOVEIgICAgICAgICAg
4pSCDQo+ICAgICDilIIgVHJhbnNmZXIgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAg
ICAgICAg4pSCIFRyYW5zZmVyICAgICDilIINCj4gICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilJzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4gICAgIOKUgiAg
ICAgICAgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgICAgICAg
ICAgICAgIOKUgg0KPiAgICAg4pSCICBQQ0kgTlRCICAg4pSCICAgICAgICAg4pSCICAgICAgICAg
ICAgICAgICAgICAgIOKUgiAgICAgICAgICAgICAg4pSCDQo+ICAgICDilIIgICAgRVBGICAgICDi
lIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCICAgICAgICAgICAgICDilIIN
Cj4gICAgIOKUgiAgIERyaXZlciAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAg
ICDilIIgUENJIFZpcnR1YWwgIOKUgg0KPiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg
4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQICAgICAg
4pSCIE5UQiBEcml2ZXIgICDilIINCj4gICAgIOKUgiAgICAgICAgICAgIOKUgiAgICAgICAgIOKU
giBQQ0kgRVAgTlRCICAgIOKUguKXhOKUgOKUgOKUgOKUgOKWuuKUgiAgICAgICAgICAgICAg4pSC
DQo+ICAgICDilIIgICAgICAgICAgICDilIIgICAgICAgICDilIIgIEZOIERyaXZlciAgICDilIIg
ICAgICDilIIgICAgICAgICAgICAgIOKUgg0KPiAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSkICAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSkICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSkDQo+ICAgICDilIIgICAgICAgICAgICDilIIgICAgICAgICDilIIg
ICAgICAgICAgICAgICDilIIgICAgICDilIIgICAgICAgICAgICAgIOKUgg0KPiAgICAg4pSCICBQ
Q0kgQlVTICAg4pSCIOKXhOKUgOKUgOKUgOKUgOKUgOKWuiDilIIgIFBDSSBFUCBCVVMgICDilIIg
ICAgICDilIIgIFZpcnR1YWwgUENJIOKUgg0KPiAgICAg4pSCICAgICAgICAgICAg4pSCICBQQ0kg
ICAg4pSCICAgICAgICAgICAgICAg4pSCICAgICAg4pSCICAgICBCVVMgICAgICDilIINCj4gICAg
IOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmCAgICAgICAgIOKUlOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKU
gOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0K
PiAgICAgICAgIFBDSSBSQyAgICAgICAgICAgICAgICAgICAgICAgIFBDSSBFUA0KPiANCj4gDQo+
IA0KPiBGcmFuayBMaSAoNCk6DQo+ICAgUENJOiBkZXNpZ253YXJlLWVwOiBBbGxvdyBwY2lfZXBj
X3NldF9iYXIoKSB1cGRhdGUgaW5ib3VuZCBtYXAgYWRkcmVzcw0KPiAgIE5UQjogZXBmOiBBbGxv
dyBtb3JlIGZsZXhpYmlsaXR5IGluIHRoZSBtZW1vcnkgQkFSIG1hcCBtZXRob2QNCj4gICBQQ0k6
IGVuZHBvaW50OiBTdXBwb3J0IE5UQiB0cmFuc2ZlciBiZXR3ZWVuIFJDIGFuZCBFUA0KPiAgIERv
Y3VtZW50YXRpb246IFBDSTogQWRkIHNwZWNpZmljYXRpb24gZm9yIHRoZSBQQ0kgdk5UQiBmdW5j
dGlvbiBkZXZpY2UNCj4gDQo+ICBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9pbmRleC5yc3Qg
ICAgICAgICAgfCAgICAyICsNCj4gIC4uLi9QQ0kvZW5kcG9pbnQvcGNpLXZudGItZnVuY3Rpb24u
cnN0ICAgICAgICB8ICAxMjYgKysNCj4gIERvY3VtZW50YXRpb24vUENJL2VuZHBvaW50L3BjaS12
bnRiLWhvd3RvLnJzdCB8ICAxNjcgKysNCj4gIGRyaXZlcnMvbnRiL2h3L2VwZi9udGJfaHdfZXBm
LmMgICAgICAgICAgICAgICB8ICAgNDggKy0NCj4gIC4uLi9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kZXNpZ253YXJlLWVwLmMgICB8ICAgMTAgKy0NCj4gIGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1
bmN0aW9ucy9LY29uZmlnICAgICAgICB8ICAgMTEgKw0KPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQv
ZnVuY3Rpb25zL01ha2VmaWxlICAgICAgIHwgICAgMSArDQo+ICBkcml2ZXJzL3BjaS9lbmRwb2lu
dC9mdW5jdGlvbnMvcGNpLWVwZi12bnRiLmMgfCAxNDI0ICsrKysrKysrKysrKysrKysrDQo+ICA4
IGZpbGVzIGNoYW5nZWQsIDE3NzUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9QQ0kvZW5kcG9pbnQvcGNpLXZudGItZnVu
Y3Rpb24ucnN0DQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9QQ0kvZW5kcG9p
bnQvcGNpLXZudGItaG93dG8ucnN0DQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wY2kv
ZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1lcGYtdm50Yi5jDQo+IA0KDQotLSAKWW91IHJlY2VpdmVk
IHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdy
b3VwcyAibGludXgtbnRiIiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFu
ZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1u
dGIrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KVG8gdmlldyB0aGlzIGRpc2N1c3Npb24g
b24gdGhlIHdlYiB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvbGludXgt
bnRiL2ZhMmFiM2NmLTE1MDgtYmJlYi00N2FmLThiMmQ0NzkwNGIyMCU0MHRpLmNvbS4K
