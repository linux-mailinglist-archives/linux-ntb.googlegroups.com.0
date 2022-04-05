Return-Path: <linux-ntb+bncBCHOPY7NVYCRBS6DWGJAMGQEEMNYKFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 127D24F3C56
	for <lists+linux-ntb@lfdr.de>; Tue,  5 Apr 2022 17:35:40 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id d12-20020a05651233cc00b0044ad60fe93dsf5197515lfg.11
        for <lists+linux-ntb@lfdr.de>; Tue, 05 Apr 2022 08:35:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649172939; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mvj0QIimGskiRULN1sbVz+5gfqC+E0O+5glyavOr8fLHjef93T60eqazwBKvpa8Ttx
         gMVueoCQDCBkFnOvm1Nif2h+IRqmEQiGZpS/+JC1eeXzHtMPoAHolCII5zHcRFQR5NiY
         BXrhV+9OaQjrJobyR6YlmQi+TfqfJ6gndH0U9l3JQJmaybdWsroWdJOt3U2eddXH/myQ
         UnofTwH32qWkECH4QO+Tyc0lgjlpG8o0R+cUlHUC6Grrt4/KrOSf+Qn9Te85Gg6b7Iir
         qwKqJLpnv5J6eqMfoPs7X0MNicHQprr5u7ylUfq0IUCHE/vdaC+qygYo2WmKpLs5/ojJ
         9S6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=ravXfhaIRw1SAMxY8bjznxgqHbbZesGsE5wlrfjqCQo=;
        b=ImxNuvgNXF7sz31DqrcFllCq+qxJXzkUCjGTz+B+ktt05+3ginQT+lncDT+aw345wN
         frcrF8ltDwNXr++D8VntH/WnmcvoO2AgzYF5wDZ1XpwvuVn4J89flD0jHW3PJPs5T3BM
         mN1VXT8gXEif96dLBDRz/PHy2HCpzpcOI7ZmgjZp6x4astMMgliX+DlKxZQinRC1ioOo
         krTt2cDhqTdAoRrYxgbUpE0YeEDqinJlVwTa0jG7YI9/SkkSUrnh8uwlx8kQKKUfyJ4U
         kX7pFvdSxUJKEXLU/FRWzwO3uCIm4ppFBL/vmREQc2NQhmAfYwHGevR9FYrvkl+vEvp9
         SEqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lkYAUUyQ;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ravXfhaIRw1SAMxY8bjznxgqHbbZesGsE5wlrfjqCQo=;
        b=UPbljdm/KZSdFJ2Cogsej+HzBp17nLJgX4fRJEu2qJ/Ujp8PbQe2bP5l+tIXyZU6TX
         FrMvz28fX22T7VxbDSCcQ4kIr6ePHnqityiKWHXgs2S9+wW1gz+Rqg2HffbEWNCES+iU
         pKLXjBSg5rEkEHMGRQd1FncjwLWjHto+LWIQ3rlEhOMe+hhaeNaieOyx8X2/rs0ir1C0
         PY/cpIcIbFMeVaNPKtgdTLmO+GdOJrrV6PEjCof6wYykJNzggs2zW7tzuv622P+k5qpw
         q30Ls4Eg90giLMnLUb+OaFxKOohim9Byg4iF2AYS6uPdCMgh/PWuNXLKIxjxEn5Yl80t
         6NnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ravXfhaIRw1SAMxY8bjznxgqHbbZesGsE5wlrfjqCQo=;
        b=cEhjibxFTkGi91njfO9o5NuFSUyJGFTjR5ZAT5AZWwMAXpkguxkfcnM2D834qEQk2J
         QMj129pdGy6Up21PqAy68InWCwQOC+FHndqr9iNkf31XLwvQ6HKBC97dMhgpCwRqPAVC
         XOaYdytTPYP5TgADQZfu9bMtf+kcuq0LWbeEW2LyPazxzjg/NWvu6jk59FlzP6QT/OD1
         F4qOWsVMoGTOpsz9PSjY0ms5l+v3V4O8lLriq7PSfxqj2CniKq+cqylruOxopBiyOpP7
         L1xa+2/DbcGAY6xv/nKD97Rdl0fUXcIPbZH0CyS7xL1RgYeYqY3SRvhabt3ER/bU0BnA
         Wjpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ravXfhaIRw1SAMxY8bjznxgqHbbZesGsE5wlrfjqCQo=;
        b=VxWE4P25bz+e21Ih8pXsriajJtpXVoui7HAkyQPKQVGNbYTMe26zf5KctH6Mj/bSga
         XIsiHK0G8P+IfyXQTkb+F3WDRTakis+kZVrD2ktId8saSfSVthGq8sC3cGxPx+FuId81
         0rGqCkj9izCPqxQHLbrdA0GrCvTjG/MTrqL68CNUgaktOYYrx07XajVAlo2yERS+CtND
         0MX+Tk1gFQBFeo8bIoH2jlFteWGkP9XMQ34+fhueUoZ7DoB68JuFkA1QwUDYtTpCOnA0
         NM79UlgV9Ip7716kZBjbwyy4Oh6lrPqNrJ62EK7ybyOhb7d39d3J2IXm4D/czLew9SCF
         4/sA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5311ig+Yx8sguclAXINuEiQ2+LF7Ix55G1SL66Oqh2EmweWuaL9B
	GfkhcS0y85RB25DYYhWCqTc=
X-Google-Smtp-Source: ABdhPJx9qHjLtqksVUFPX65ETcMU3QCapwH7NogIYvSEaFR8fL63j7zujGUjIYMTYZEMKsOF3NIjwQ==
X-Received: by 2002:a05:6512:1095:b0:44a:ef2e:ba6 with SMTP id j21-20020a056512109500b0044aef2e0ba6mr2995258lfg.489.1649172939286;
        Tue, 05 Apr 2022 08:35:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9983:0:b0:249:7c7a:28d8 with SMTP id w3-20020a2e9983000000b002497c7a28d8ls2370052lji.3.gmail;
 Tue, 05 Apr 2022 08:35:38 -0700 (PDT)
X-Received: by 2002:a2e:a445:0:b0:24a:c1ba:b62f with SMTP id v5-20020a2ea445000000b0024ac1bab62fmr2565223ljn.81.1649172938248;
        Tue, 05 Apr 2022 08:35:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649172938; cv=none;
        d=google.com; s=arc-20160816;
        b=o+7UEoE6LBLVYANxcb/CzEaolzqsaXaY6jsjziLxVVIH8SvgjX+5m2tbCGj06sVtOe
         /VRLKGyodTANmOzisdEdDyAC2x4pEK24x3tXjB6fAKkkxt5ASxKpkrX3oGOLN40QgS73
         VJF3QOtmtD1GvJT8QQavsA13t1Z6kHvX1yJBx08fY5wh4lh9pU7xVutoprueKpq9n0zT
         VKNmqXad9NKjXt/+yUNdWCyKkQ3m65egZABwEat/ud4qggGmJDFE39Pv08UVz3nJx2fC
         4Z7lH0FR/4PZojGevMqJsUX9MXHhHS3lsoEpAU6XHqn+pSMNEjF6pbx86aFeLZhjBRFy
         xg0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=RAVH8ALFlz9wuASO9LQb9RbtPlxb1j2B9jBGCAw1Kh8=;
        b=R1fcGub9LON5eKcUfAn+DVp2mg6iYuTBVqOwJjWZgW7dYUcbC/esKqAgXReQwjABJU
         UMx3kD6kRReB0lS31m4qRwnXt25+gwpmRllxqQCs9UI/0pAPVOxYgQXnCJ+4JEtl/nlh
         0n6XCLuNxvuaGYHwn84dyUEOrs8SPa++9Qon8uKo/wLUazZq+90v7tplsFlqAQ3ghRGz
         45e0T3Nr5Rd/hOIVHIER8Hv0DIEUTl/FgLwnM6sMRGjf2Q5+SyOfEkuq6YuigkP/tGGi
         64PEFO5o6sorBUYy3cBAw6ia4i9qxTFBmnLsOSUsRHBIB4bXHWEnRU4sL3nzNI2O9Jtw
         Blqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lkYAUUyQ;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id w25-20020a2e3019000000b0024af7c96041si817826ljw.6.2022.04.05.08.35.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 08:35:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Received: by mail-ed1-x534.google.com with SMTP id g20so15361983edw.6
        for <linux-ntb@googlegroups.com>; Tue, 05 Apr 2022 08:35:38 -0700 (PDT)
X-Received: by 2002:aa7:d758:0:b0:41c:dc93:4d81 with SMTP id
 a24-20020aa7d758000000b0041cdc934d81mr4164613eds.15.1649172937536; Tue, 05
 Apr 2022 08:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com> <fa2ab3cf-1508-bbeb-47af-8b2d47904b20@ti.com>
In-Reply-To: <fa2ab3cf-1508-bbeb-47af-8b2d47904b20@ti.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Tue, 5 Apr 2022 10:35:25 -0500
Message-ID: <CAHrpEqT2zwWiiiTUDAu9JNPXmzP1zELF7YDERWjdOohGMFRBnA@mail.gmail.com>
Subject: Re: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Frank Li <Frank.Li@nxp.com>, Bjorn Helgaas <helgaas@kernel.org>, lorenzo.pieralisi@arm.com, 
	kw@linux.com, Jingoo Han <jingoohan1@gmail.com>, gustavo.pimentel@synopsys.com, 
	hongxing.zhu@nxp.com, Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Original-Sender: lznuaa@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=lkYAUUyQ;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::534 as
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

T24gVHVlLCBBcHIgNSwgMjAyMiBhdCA1OjM0IEFNIEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtp
c2hvbkB0aS5jb20+IHdyb3RlOg0KPg0KPiBIaSBGcmFuayBMaSwNCj4NCj4gT24gMjIvMDIvMjIg
OTo1MyBwbSwgRnJhbmsgTGkgd3JvdGU6DQo+ID4gVGhpcyBpbXBsZW1lbnQgTlRCIGZ1bmN0aW9u
IGZvciBQQ0llIEVQIHRvIFJDIGNvbm5lY3Rpb25zLg0KPiA+IFRoZSBleGlzdGVkIG50YiBlcGYg
bmVlZCB0d28gUENJIEVQcyBhbmQgdHdvIFBDSSBIb3N0Lg0KPg0KPiBBcyBJIGhhZCBlYXJsaWVy
IG1lbnRpb25lZCBpbiBbMV0sIElNSE8gaWRlYWwgc29sdXRpb24gd291bGQgYmUgYnVpbGQgb24g
dmlydGlvDQo+IGxheWVyIGluc3RlYWQgb2YgdHJ5aW5nIHRvIGJ1aWxkIG9uIE5UQiBsYXllciAo
d2hpY2ggaXMgc3BlY2lmaWMgdG8gUkM8LT5SQw0KPiBjb21tdW5pY2F0aW9uKS4NCj4NCj4gQXJl
IHRoZXJlIGFueSBzcGVjaWZpYyByZWFzb25zIGZvciBub3QgdGFraW5nIHRoYXQgcGF0aD8NCg0K
MS4gRVAgc2lkZSB3b3JrIGFzIHZIT1NUIG1vZGUuICB2SG9zdCBzdXBwb3NlIGFjY2VzcyBhbGwg
bWVtb3J5IG9mIHZpcnR1YWwgaW8uDQpCdXQgdGhlcmUgYXJlIG9ubHkgbWFwIHdpbmRvd3Mgb24g
dGhlIEVQIHNpZGUgdG8gYWNjZXNzIFJDIHNpZGUNCm1lbW9yeS4gWW91IGhhdmUgdG8gbW92ZQ0K
bWFwIHdpbmRvd3MgZm9yIGVhY2ggYWNjZXNzLiAgSXQgaXMgcXVpdGUgbG93IGVmZmljaWVuY3ku
DQoNCjIuIFNvIGZhciBhcyBJIGtub3csIHZpcnRpbyBpcyBzdGlsbCBub3QgRE1BIHlldC4gIENQ
VSBhY2Nlc3MgUENJDQpjYW4ndCBnZW5lcmF0ZSBsb25nZXIgUENJIFRMUCwNClNvIHRoZSBzcGVl
ZCBpcyBxdWl0ZSBzbG93LiAgTlRCIGFscmVhZHkgaGFzIERNQSBzdXBwb3J0LiAgSWYgeW91IHVz
ZQ0Kc3lzdGVtIGxldmVsIERNQSwNCm5vIGNoYW5nZSBpcyBuZWVkZWQgYXQgTlRCIGxldmVsLiAg
SWYgd2Ugd2FudCB0byB1c2UgYSBQQ0kgY29udHJvbGxlcg0KZW1iZWRkZWQgRE1BLCAgc29tZSBz
bWFsbA0KY2hhbmdlcyBuZWVkIGlmIGJhc2VkIG9uIG15IG90aGVyIERlc2lnbndhcmUgUENJIGVE
TUEgcGF0Y2hlcywgd2hpY2gNCmFyZSB1bmRlciByZXZpZXcuDQoNCjMuIEFsbCB0aGUgbWFqb3Ig
ZGF0YSB0cmFuc2ZlciBvZiBOVEIgaXMgdXNpbmcgd3JpdGUuICBCZWNhdXNlIFRMUA0Kd3JpdGUg
bmVlZG4ndCB3YWl0IGZvciBjb21wbGV0ZSwgIHdyaXRlDQpwZXJmb3JtYW5jZSBpcyBiZXR0ZXIg
dGhhbiByZWFkaW5nLiAgT24gb3VyIHBsYXRmb3JtLCAgd3JpdGUNCnBlcmZvcm1hbmNlIGlzIGFi
b3V0IDEwJSBiZXR0ZXIgdGhhbiAgcmVhZC4NCg0KRnJhbmsNCg0KPg0KPiBUaGFua3MsDQo+IEtp
c2hvbg0KPg0KPiBbMV0gLT4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci80NTk3NDVkMS05ZmU3
LWU3OTItMzUzMi0zM2VlOTU1MmJjNGRAdGkuY29tDQo+ID4NCj4gPiBUaGlzIGp1c3QgbmVlZCBF
UCB0byBSQyBjb25uZWN0aW9ucy4NCj4gPg0KPiA+ICAgICDilIzilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilJAgICAgICAgICDilIzilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4gPiAgICAg4pSCICAgICAgICAgICAg
4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIOKUgg0K
PiA+ICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAgICAg
ICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSkDQo+ID4gICAgIOKUgiBOVEIgICAgICAgIOKUgiAgICAgICAgIOKU
giAgICAgICAgICAgICAgICAgICAgICDilIIgTlRCICAgICAgICAgIOKUgg0KPiA+ICAgICDilIIg
TmV0RGV2ICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCIE5ldERl
diAgICAgICDilIINCj4gPiAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSkICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiA+ICAgICDilIIgTlRCICAgICAgICDi
lIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCIE5UQiAgICAgICAgICDilIIN
Cj4gPiAgICAg4pSCIFRyYW5zZmVyICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAg
ICAgIOKUgiBUcmFuc2ZlciAgICAg4pSCDQo+ID4gICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilJzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4gPiAgICAg4pSC
ICAgICAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiAgICAg
ICAgICAgICAg4pSCDQo+ID4gICAgIOKUgiAgUENJIE5UQiAgIOKUgiAgICAgICAgIOKUgiAgICAg
ICAgICAgICAgICAgICAgICDilIIgICAgICAgICAgICAgIOKUgg0KPiA+ICAgICDilIIgICAgRVBG
ICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCICAgICAgICAgICAg
ICDilIINCj4gPiAgICAg4pSCICAgRHJpdmVyICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAg
ICAgICAgICAgIOKUgiBQQ0kgVmlydHVhbCAg4pSCDQo+ID4gICAgIOKUgiAgICAgICAgICAgIOKU
giAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUkCAgICAgIOKUgiBOVEIgRHJpdmVyICAg4pSCDQo+ID4gICAgIOKUgiAgICAgICAgICAgIOKU
giAgICAgICAgIOKUgiBQQ0kgRVAgTlRCICAgIOKUguKXhOKUgOKUgOKUgOKUgOKWuuKUgiAgICAg
ICAgICAgICAg4pSCDQo+ID4gICAgIOKUgiAgICAgICAgICAgIOKUgiAgICAgICAgIOKUgiAgRk4g
RHJpdmVyICAgIOKUgiAgICAgIOKUgiAgICAgICAgICAgICAg4pSCDQo+ID4gICAgIOKUnOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUnOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgIOKUnOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiA+ICAgICDilIIgICAgICAgICAg
ICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICDilIIgICAgICDilIIgICAgICAgICAgICAg
IOKUgg0KPiA+ICAgICDilIIgIFBDSSBCVVMgICDilIIg4peE4pSA4pSA4pSA4pSA4pSA4pa6IOKU
giAgUENJIEVQIEJVUyAgIOKUgiAgICAgIOKUgiAgVmlydHVhbCBQQ0kg4pSCDQo+ID4gICAgIOKU
giAgICAgICAgICAgIOKUgiAgUENJICAgIOKUgiAgICAgICAgICAgICAgIOKUgiAgICAgIOKUgiAg
ICAgQlVTICAgICAg4pSCDQo+ID4gICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUmCAgICAgICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPiA+ICAgICAgICAgUENJIFJDICAgICAgICAgICAgICAg
ICAgICAgICAgUENJIEVQDQo+ID4NCj4gPg0KPiA+DQo+ID4gRnJhbmsgTGkgKDQpOg0KPiA+ICAg
UENJOiBkZXNpZ253YXJlLWVwOiBBbGxvdyBwY2lfZXBjX3NldF9iYXIoKSB1cGRhdGUgaW5ib3Vu
ZCBtYXAgYWRkcmVzcw0KPiA+ICAgTlRCOiBlcGY6IEFsbG93IG1vcmUgZmxleGliaWxpdHkgaW4g
dGhlIG1lbW9yeSBCQVIgbWFwIG1ldGhvZA0KPiA+ICAgUENJOiBlbmRwb2ludDogU3VwcG9ydCBO
VEIgdHJhbnNmZXIgYmV0d2VlbiBSQyBhbmQgRVANCj4gPiAgIERvY3VtZW50YXRpb246IFBDSTog
QWRkIHNwZWNpZmljYXRpb24gZm9yIHRoZSBQQ0kgdk5UQiBmdW5jdGlvbiBkZXZpY2UNCj4gPg0K
PiA+ICBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9pbmRleC5yc3QgICAgICAgICAgfCAgICAy
ICsNCj4gPiAgLi4uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1mdW5jdGlvbi5yc3QgICAgICAgIHwg
IDEyNiArKw0KPiA+ICBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1ob3d0by5y
c3QgfCAgMTY3ICsrDQo+ID4gIGRyaXZlcnMvbnRiL2h3L2VwZi9udGJfaHdfZXBmLmMgICAgICAg
ICAgICAgICB8ICAgNDggKy0NCj4gPiAgLi4uL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2ln
bndhcmUtZXAuYyAgIHwgICAxMCArLQ0KPiA+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlv
bnMvS2NvbmZpZyAgICAgICAgfCAgIDExICsNCj4gPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVu
Y3Rpb25zL01ha2VmaWxlICAgICAgIHwgICAgMSArDQo+ID4gIGRyaXZlcnMvcGNpL2VuZHBvaW50
L2Z1bmN0aW9ucy9wY2ktZXBmLXZudGIuYyB8IDE0MjQgKysrKysrKysrKysrKysrKysNCj4gPiAg
OCBmaWxlcyBjaGFuZ2VkLCAxNzc1IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiA+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9QQ0kvZW5kcG9pbnQvcGNpLXZudGIt
ZnVuY3Rpb24ucnN0DQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL1BDSS9l
bmRwb2ludC9wY2ktdm50Yi1ob3d0by5yc3QNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZl
cnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXZudGIuYw0KPiA+DQoNCi0tIApZb3Ug
cmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBH
b29nbGUgR3JvdXBzICJsaW51eC1udGIiIGdyb3VwLgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMg
Z3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRv
IGxpbnV4LW50Yit1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlz
Y3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dp
ZC9saW51eC1udGIvQ0FIcnBFcVQyendXaWlpVFVEQXU5Sk5QWG16UDF6RUxGN1lERVJXamRPb2hH
TUZSQm5BJTQwbWFpbC5nbWFpbC5jb20uCg==
