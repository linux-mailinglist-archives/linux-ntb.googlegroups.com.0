Return-Path: <linux-ntb+bncBCHOPY7NVYCRBAWXQGJQMGQEF7PFIDY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD11509156
	for <lists+linux-ntb@lfdr.de>; Wed, 20 Apr 2022 22:22:26 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id eg29-20020a056402289d00b0041d6db0fbc9sf1841028edb.9
        for <lists+linux-ntb@lfdr.de>; Wed, 20 Apr 2022 13:22:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650486146; cv=pass;
        d=google.com; s=arc-20160816;
        b=VBzglpyOsMg5qZEujQNiOVvTe4dlFjwmD6Lne4svcgKz+3bMY5iCGAveqborvYoGq2
         26hiSWU8sKwTG7BA79LK/sLKy8AIDFL7jLNCUMXfB6Ntkatgi0OlI5EAVMoOGN9xQFc2
         wXX5pHT8ber5ST9yZEGW0W0tPeCZTL3JYzyIXhQdg3Qh7ZGSBz4mNI4jpc81iHDb6wzi
         MhbtrJqMzTx1/MCBV8yzUg93p8M39nBWMZ+PuRzqNXpn0tuh1cQ1NZTADpFT8loaHhwL
         zurqLMuCHfWBQ9LHEBAiP4njk4rWxf6ZQg2C1jCG4FIcTf9dMJ/7DzFFIXTCG0zPaL/K
         XqNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=fLPQcs/BrRs9HDWGR7U1EchyFnNmspNUYUDRE7wpwRg=;
        b=pszX1jt9Qb9uclvU7uH+lOQ3SSLZFvmq/tMv2E9lLx5PwIRtj5pUt54paGHsnpLOaN
         Xjdhdb7I97Hsf84KAJtWTzJg0K51P1oI8YQp8eUs4vvN0W0b7FmdlhL4gf7wFekkDLrI
         6biH59cwztZfedJwljiKlIhN7X3oNMxDONPUYLAsk1qTouuNIJ+4GHeWoH3n+ttnSkDa
         /SJFiAdS/V+Rw7YIpHQaKrnkZhH+Knbw8+S0mLAMhvaXpGBh0uc3RzbsYzeItHT53lPt
         ka7nH1bZAV0cAS6YQhd+VOwuLeQpo7PZPmH+dov65k5aUW3dDmRsVXxxAwaZsBBOEUWj
         z0Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nlnwYMIW;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fLPQcs/BrRs9HDWGR7U1EchyFnNmspNUYUDRE7wpwRg=;
        b=ot6ahC95knemKTPZAHbrOyZLQWdSB4ZUW5uKbsxvjdNnvMD6F4d2AKVBsHNppq3TNY
         LX/dSAaP6/GNKWrS6+tiiZuCv5tWFY4+5Q4WHiGWkBBRvbLpG/mmRbMxl+DkROdKHkwI
         S35NFRbnmJ8UlefO1LokiuMWT0LetdBBRvDKrH1gAeeiAQ3vQI4kv2G2x5u4nGzPgSzp
         SyryJl6/dYJ6EugcZYynppHQYSAHyxmuXzmmWnP/bK387Pjzcp+nN9RY9rIUhRCtSa6e
         kBAdFMtGNE+Kd82NE5uy7vsM/WdueN0ikQlqhc3B8yIB2DzqxwTVhQZjdqZ8jTbd/b0S
         ULPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fLPQcs/BrRs9HDWGR7U1EchyFnNmspNUYUDRE7wpwRg=;
        b=J5WDINT7pmTz2ZwaKTWD3qNwrEMyQREwt+U8TWB6eaZCj+eqlEnCrUrSZZ9CzMnyKx
         gVnuFmkcHvpQDBCS3XjD0/serVBynQV8XKimbsF1M/1vvvqySF7XCJoofGslsfi5tBiQ
         d4rOUKIolQSxwFFziVr5yaonfw3Yo68/X+fYleFc8rsQ5oXYZJST6x+iwwJEwV9pQFGh
         WHSTy1pvnyqYSxr4QkPPdRj4veiNl+EKUaaK+u4ecwqldqfYxko/ziW0AoqkfrKBE5EJ
         ddugq4Xc9spSlGHNxI9W1e20VsxWWNeQfKMLx2sJkUGVfvzNY8j/zGtcE+McUhPGWIsN
         bqsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fLPQcs/BrRs9HDWGR7U1EchyFnNmspNUYUDRE7wpwRg=;
        b=5BPeCy49sM/NsF+aROYKuy9byMv6qn0XFaXOh6IKPlvIdbVCX5LZFf7/CjI4D0D1Gg
         9zbnWx6vgPr9AVwWUQOrs/kZ5mbV7Bn46r1zV2U7CmYPQjmYSPf9daQ3wVAHfsn8TO2c
         u/PVp/6cBNQkAI07RLjYwh1KcXgsdFTPB5KXUOU2ZJY0EJLaFhkezI65Eq6J0b/E+6pl
         j2MsNmmoP7tw8D9wJ6A3cJGSzyrH4fiJSKjWu821c0vP8fXh0mYXnnf2zxPsjH6/6AAr
         wTpF1z9bSfipiMhZbmiVv91NVzamaKZ+fXqfETu1WCDa+wxyrOLW0dj0Btmm8yfkeVZC
         CDoQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5328eJf9tMCyZetrzw8UydzdwhEBQ8x1i89hnSHFH48j2c9e3LZE
	PpefOXjVqf5CvAGNv2A4YY4=
X-Google-Smtp-Source: ABdhPJxkBlbqLnvS/6+b8O518Ak4TJ3aOzEJzzUV3mltwGfbE3NtVr5FvoHJPDLTc9+ilz1mBI+PbA==
X-Received: by 2002:a17:907:6090:b0:6e8:abda:8933 with SMTP id ht16-20020a170907609000b006e8abda8933mr20143905ejc.46.1650486146245;
        Wed, 20 Apr 2022 13:22:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:274f:b0:6d6:e53e:993f with SMTP id
 a15-20020a170906274f00b006d6e53e993fls1764517ejd.2.gmail; Wed, 20 Apr 2022
 13:22:25 -0700 (PDT)
X-Received: by 2002:a17:907:6294:b0:6e1:ea4:74a3 with SMTP id nd20-20020a170907629400b006e10ea474a3mr19751008ejc.168.1650486145174;
        Wed, 20 Apr 2022 13:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650486145; cv=none;
        d=google.com; s=arc-20160816;
        b=ZM324XtE6mNWfm7WMau36LsGMYy5fD9VbIhBtQ7rSBbsn+fE5xn8uAAVwU3hBfJPM9
         b/2fDhJExajHPYUhZH5fkZO1Q5AWjUY2e1qSeyH8TzNmaJqE/S/WO/3VSArUAWtShDbv
         hepWMhwRltUVulVV5uYZ/pyFJP8Mt/+nMDCzS7OMm8I64aS3FBpADMjZx5dv1vlh+hnq
         irIaBpNthdkwbqf3K0njxhn3Z7KPdrnNpKgeq/RZxNI5eFlpELsEMsTpNdncYKev2puv
         UqCEcsxitTEGFe1OeS/IDjkdrmDapCBarO31e8rn7eo4zFw2mJlK1ibwYYk/k54Vf7Id
         NMFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0DTChLKEaC7rwwyVknKc61wzteWf9dysaz/otxFJdEo=;
        b=y4bG2IkkW7qZwCMC9A1ZWyvGG323FY5JzO3BkMQs7qla8yJ0N9mHQEavAhjP6keb4c
         oFkttM/bC0tg6WWy/Tx90IXcpVpnnz6FkEjtqXagBhrLA+bA/wZ+qD1dcW3j7+J9hB/W
         AlRmn78ixdrJD5cQedDart2EbBwaedXSikq42eJHsVi8a6DPPx/5XdH0/m7RUvGpu1AE
         b7fKie6JVQIZdjO40gVyaI+5NQvf2Xi4rTBibBjYZghhxxitHijHufHIL6tJhVfARyeg
         NxqMM16xLKcWhzCJgwPVkTuH/y2VCJErmDToE7olk9OAnVry8Aqx54oFPGiZ9HaKMb5/
         mh/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=nlnwYMIW;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id j1-20020a50d001000000b0041b5ea4060asi159987edf.5.2022.04.20.13.22.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Apr 2022 13:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Received: by mail-ej1-x62e.google.com with SMTP id g13so5864225ejb.4
        for <linux-ntb@googlegroups.com>; Wed, 20 Apr 2022 13:22:25 -0700 (PDT)
X-Received: by 2002:a17:906:6a1c:b0:6eb:d76c:e835 with SMTP id
 qw28-20020a1709066a1c00b006ebd76ce835mr21142939ejc.15.1650486144778; Wed, 20
 Apr 2022 13:22:24 -0700 (PDT)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com> <fa2ab3cf-1508-bbeb-47af-8b2d47904b20@ti.com>
 <CAHrpEqT2zwWiiiTUDAu9JNPXmzP1zELF7YDERWjdOohGMFRBnA@mail.gmail.com>
In-Reply-To: <CAHrpEqT2zwWiiiTUDAu9JNPXmzP1zELF7YDERWjdOohGMFRBnA@mail.gmail.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Wed, 20 Apr 2022 15:22:13 -0500
Message-ID: <CAHrpEqSceNNQNAzCwbfiJc2Zk9fYCo5KqKmLZqHAG-7teSqF0Q@mail.gmail.com>
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
 header.i=@gmail.com header.s=20210112 header.b=nlnwYMIW;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::62e as
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

T24gVHVlLCBBcHIgNSwgMjAyMiBhdCAxMDozNSBBTSBaaGkgTGkgPGx6bnVhYUBnbWFpbC5jb20+
IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEFwciA1LCAyMDIyIGF0IDU6MzQgQU0gS2lzaG9uIFZpamF5
IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBIaSBGcmFuayBMaSwN
Cj4gPg0KPiA+IE9uIDIyLzAyLzIyIDk6NTMgcG0sIEZyYW5rIExpIHdyb3RlOg0KPiA+ID4gVGhp
cyBpbXBsZW1lbnQgTlRCIGZ1bmN0aW9uIGZvciBQQ0llIEVQIHRvIFJDIGNvbm5lY3Rpb25zLg0K
PiA+ID4gVGhlIGV4aXN0ZWQgbnRiIGVwZiBuZWVkIHR3byBQQ0kgRVBzIGFuZCB0d28gUENJIEhv
c3QuDQo+ID4NCj4gPiBBcyBJIGhhZCBlYXJsaWVyIG1lbnRpb25lZCBpbiBbMV0sIElNSE8gaWRl
YWwgc29sdXRpb24gd291bGQgYmUgYnVpbGQgb24gdmlydGlvDQo+ID4gbGF5ZXIgaW5zdGVhZCBv
ZiB0cnlpbmcgdG8gYnVpbGQgb24gTlRCIGxheWVyICh3aGljaCBpcyBzcGVjaWZpYyB0byBSQzwt
PlJDDQo+ID4gY29tbXVuaWNhdGlvbikuDQo+ID4NCj4gPiBBcmUgdGhlcmUgYW55IHNwZWNpZmlj
IHJlYXNvbnMgZm9yIG5vdCB0YWtpbmcgdGhhdCBwYXRoPw0KPg0KPiAxLiBFUCBzaWRlIHdvcmsg
YXMgdkhPU1QgbW9kZS4gIHZIb3N0IHN1cHBvc2UgYWNjZXNzIGFsbCBtZW1vcnkgb2YgdmlydHVh
bCBpby4NCj4gQnV0IHRoZXJlIGFyZSBvbmx5IG1hcCB3aW5kb3dzIG9uIHRoZSBFUCBzaWRlIHRv
IGFjY2VzcyBSQyBzaWRlDQo+IG1lbW9yeS4gWW91IGhhdmUgdG8gbW92ZQ0KPiBtYXAgd2luZG93
cyBmb3IgZWFjaCBhY2Nlc3MuICBJdCBpcyBxdWl0ZSBsb3cgZWZmaWNpZW5jeS4NCj4NCj4gMi4g
U28gZmFyIGFzIEkga25vdywgdmlydGlvIGlzIHN0aWxsIG5vdCBETUEgeWV0LiAgQ1BVIGFjY2Vz
cyBQQ0kNCj4gY2FuJ3QgZ2VuZXJhdGUgbG9uZ2VyIFBDSSBUTFAsDQo+IFNvIHRoZSBzcGVlZCBp
cyBxdWl0ZSBzbG93LiAgTlRCIGFscmVhZHkgaGFzIERNQSBzdXBwb3J0LiAgSWYgeW91IHVzZQ0K
PiBzeXN0ZW0gbGV2ZWwgRE1BLA0KPiBubyBjaGFuZ2UgaXMgbmVlZGVkIGF0IE5UQiBsZXZlbC4g
IElmIHdlIHdhbnQgdG8gdXNlIGEgUENJIGNvbnRyb2xsZXINCj4gZW1iZWRkZWQgRE1BLCAgc29t
ZSBzbWFsbA0KPiBjaGFuZ2VzIG5lZWQgaWYgYmFzZWQgb24gbXkgb3RoZXIgRGVzaWdud2FyZSBQ
Q0kgZURNQSBwYXRjaGVzLCB3aGljaA0KPiBhcmUgdW5kZXIgcmV2aWV3Lg0KPg0KPiAzLiBBbGwg
dGhlIG1ham9yIGRhdGEgdHJhbnNmZXIgb2YgTlRCIGlzIHVzaW5nIHdyaXRlLiAgQmVjYXVzZSBU
TFANCj4gd3JpdGUgbmVlZG4ndCB3YWl0IGZvciBjb21wbGV0ZSwgIHdyaXRlDQo+IHBlcmZvcm1h
bmNlIGlzIGJldHRlciB0aGFuIHJlYWRpbmcuICBPbiBvdXIgcGxhdGZvcm0sICB3cml0ZQ0KPiBw
ZXJmb3JtYW5jZSBpcyBhYm91dCAxMCUgYmV0dGVyIHRoYW4gIHJlYWQuDQo+DQo+IEZyYW5rDQoN
CkFueSBDb21tZW50cyBvciByZWplY3Rpb24/IEBLaXNob24gVmlqYXkgQWJyYWhhbSBJDQoNCmJl
c3QgcmVnYXJkcw0KRnJhbmsgTGkNCg0KPg0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+IEtpc2hvbg0K
PiA+DQo+ID4gWzFdIC0+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvNDU5NzQ1ZDEtOWZlNy1l
NzkyLTM1MzItMzNlZTk1NTJiYzRkQHRpLmNvbQ0KPiA+ID4NCj4gPiA+IFRoaXMganVzdCBuZWVk
IEVQIHRvIFJDIGNvbm5lY3Rpb25zLg0KPiA+ID4NCj4gPiA+ICAgICDilIzilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilJAgICAgICAgICDilIzilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4gPiA+ICAgICDilIIgICAg
ICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAg4pSCDQo+ID4gPiAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSkICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUjOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiA+ID4gICAgIOKUgiBOVEIgICAgICAgIOKU
giAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgTlRCICAgICAgICAgIOKUgg0K
PiA+ID4gICAgIOKUgiBOZXREZXYgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAg
ICAgICDilIIgTmV0RGV2ICAgICAgIOKUgg0KPiA+ID4gICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDi
lJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4gPiA+ICAg
ICDilIIgTlRCICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSC
IE5UQiAgICAgICAgICDilIINCj4gPiA+ICAgICDilIIgVHJhbnNmZXIgICDilIIgICAgICAgICDi
lIIgICAgICAgICAgICAgICAgICAgICAg4pSCIFRyYW5zZmVyICAgICDilIINCj4gPiA+ICAgICDi
lJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAgICAgICDilIIgICAg
ICAgICAgICAgICAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSkDQo+ID4gPiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAg
ICAgICAgICAgICAgICAgIOKUgiAgICAgICAgICAgICAg4pSCDQo+ID4gPiAgICAg4pSCICBQQ0kg
TlRCICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiAgICAgICAgICAg
ICAg4pSCDQo+ID4gPiAgICAg4pSCICAgIEVQRiAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAg
ICAgICAgICAgICAgIOKUgiAgICAgICAgICAgICAg4pSCDQo+ID4gPiAgICAg4pSCICAgRHJpdmVy
ICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUgiBQQ0kgVmlydHVhbCAg
4pSCDQo+ID4gPiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg4pSc4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQICAgICAg4pSCIE5UQiBEcml2ZXIg
ICDilIINCj4gPiA+ICAgICDilIIgICAgICAgICAgICDilIIgICAgICAgICDilIIgUENJIEVQIE5U
QiAgICDilILil4TilIDilIDilIDilIDilrrilIIgICAgICAgICAgICAgIOKUgg0KPiA+ID4gICAg
IOKUgiAgICAgICAgICAgIOKUgiAgICAgICAgIOKUgiAgRk4gRHJpdmVyICAgIOKUgiAgICAgIOKU
giAgICAgICAgICAgICAg4pSCDQo+ID4gPiAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSkICAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSkICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSkDQo+ID4gPiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg4pSC
ICAgICAgICAgICAgICAg4pSCICAgICAg4pSCICAgICAgICAgICAgICDilIINCj4gPiA+ICAgICDi
lIIgIFBDSSBCVVMgICDilIIg4peE4pSA4pSA4pSA4pSA4pSA4pa6IOKUgiAgUENJIEVQIEJVUyAg
IOKUgiAgICAgIOKUgiAgVmlydHVhbCBQQ0kg4pSCDQo+ID4gPiAgICAg4pSCICAgICAgICAgICAg
4pSCICBQQ0kgICAg4pSCICAgICAgICAgICAgICAg4pSCICAgICAg4pSCICAgICBCVVMgICAgICDi
lIINCj4gPiA+ICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgg
ICAgICAgICDilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lLTilIDilIDilIDilIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilJgNCj4gPiA+ICAgICAgICAgUENJIFJDICAgICAgICAgICAgICAgICAgICAgICAg
UENJIEVQDQo+ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiBGcmFuayBMaSAoNCk6DQo+ID4gPiAg
IFBDSTogZGVzaWdud2FyZS1lcDogQWxsb3cgcGNpX2VwY19zZXRfYmFyKCkgdXBkYXRlIGluYm91
bmQgbWFwIGFkZHJlc3MNCj4gPiA+ICAgTlRCOiBlcGY6IEFsbG93IG1vcmUgZmxleGliaWxpdHkg
aW4gdGhlIG1lbW9yeSBCQVIgbWFwIG1ldGhvZA0KPiA+ID4gICBQQ0k6IGVuZHBvaW50OiBTdXBw
b3J0IE5UQiB0cmFuc2ZlciBiZXR3ZWVuIFJDIGFuZCBFUA0KPiA+ID4gICBEb2N1bWVudGF0aW9u
OiBQQ0k6IEFkZCBzcGVjaWZpY2F0aW9uIGZvciB0aGUgUENJIHZOVEIgZnVuY3Rpb24gZGV2aWNl
DQo+ID4gPg0KPiA+ID4gIERvY3VtZW50YXRpb24vUENJL2VuZHBvaW50L2luZGV4LnJzdCAgICAg
ICAgICB8ICAgIDIgKw0KPiA+ID4gIC4uLi9QQ0kvZW5kcG9pbnQvcGNpLXZudGItZnVuY3Rpb24u
cnN0ICAgICAgICB8ICAxMjYgKysNCj4gPiA+ICBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9w
Y2ktdm50Yi1ob3d0by5yc3QgfCAgMTY3ICsrDQo+ID4gPiAgZHJpdmVycy9udGIvaHcvZXBmL250
Yl9od19lcGYuYyAgICAgICAgICAgICAgIHwgICA0OCArLQ0KPiA+ID4gIC4uLi9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMgICB8ICAgMTAgKy0NCj4gPiA+ICBkcml2ZXJz
L3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvS2NvbmZpZyAgICAgICAgfCAgIDExICsNCj4gPiA+ICBk
cml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvTWFrZWZpbGUgICAgICAgfCAgICAxICsNCj4g
PiA+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi12bnRiLmMgfCAxNDI0
ICsrKysrKysrKysrKysrKysrDQo+ID4gPiAgOCBmaWxlcyBjaGFuZ2VkLCAxNzc1IGluc2VydGlv
bnMoKyksIDE0IGRlbGV0aW9ucygtKQ0KPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1mdW5jdGlvbi5yc3QNCj4gPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9QQ0kvZW5kcG9pbnQvcGNpLXZudGItaG93dG8ucnN0
DQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9u
cy9wY2ktZXBmLXZudGIuYw0KPiA+ID4NCg0KLS0gCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2Ug
YmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgImxpbnV4LW50
YiIgZ3JvdXAuClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZp
bmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gbGludXgtbnRiK3Vuc3Vic2NyaWJl
QGdvb2dsZWdyb3Vwcy5jb20uClRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIgdmlz
aXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL21zZ2lkL2xpbnV4LW50Yi9DQUhycEVxU2Nl
Tk5RTkF6Q3diZmlKYzJaazlmWUNvNUtxS21MWnFIQUctN3RlU3FGMFElNDBtYWlsLmdtYWlsLmNv
bS4K
