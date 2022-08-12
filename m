Return-Path: <linux-ntb+bncBCS4BDN7YUCRBDN33GLQMGQEGNN7NJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F0D5911CE
	for <lists+linux-ntb@lfdr.de>; Fri, 12 Aug 2022 16:02:58 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id y17-20020a63e251000000b0041d322b88b6sf268849pgj.2
        for <lists+linux-ntb@lfdr.de>; Fri, 12 Aug 2022 07:02:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1660312976; cv=pass;
        d=google.com; s=arc-20160816;
        b=PpCySY4nRNqb/IA8nbVTlPeLoWSgV3wjxs6bqxwYxbMdPJQJFa4sbG/cLDQFHF+cpe
         SGLN7hXENEPiLOeYuP+Po9uXbKW6ux4dPNE8zciLDPCNzlH4X3foB6LLQHMDe1vciQHa
         zF8fYtlwq+we0scgNNxe8UQGs2NNvu93moatFuEWSWi4D63KmsfZXMMeOIsL7AamKebs
         4KcaOi3gutBmxk3cvuH055lTAZok4bkPTJ3xydQptoKxGXykKmeWW6uWmdZH97+RfwRA
         qzxhgwMQT+6KfjKz7k4U6W1hBjslPCYUP981jxkKvuwl5Tzq6QyGIZfy5PU9MjQ3Ipl+
         7+3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=p1SOwQB9RVJrr3MjWCfWkcJgZ5oqgCuchDhKQKih2K4=;
        b=fW+WgaX7pvMPEuImLD+yDtW7OmLFM/u5LEN5UV8ArX4lmmPWYbmFDZRI+y10oV7e6h
         H1p52St9RXs1pH3vNWlOSmS81//J5yEAGL3mzHpeJcyDyDI4/Fg6cUP/oBJLx0u9jjsD
         A36x+LpdrazuxIctmZCwpxmfyCoMw7hNdTNfcgXUOz2Rq8orqLdCHgRlSsXyBfcwrbFD
         648SSMhAEclnUYfJC7+frfIeTMqW8WkMOk1benfpEULkTdpL9kJu2HjDXud1h5qL5CSv
         ryUaD7o8SStzxMyJ3kseXKd6R5QGerYQo4YSLJWaTKwVAKLhfknab2uibjGQCmJ2KU52
         YZlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=z6TOXBbO;
       spf=neutral (google.com: 2607:f8b0:4864:20::f2e is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc;
        bh=p1SOwQB9RVJrr3MjWCfWkcJgZ5oqgCuchDhKQKih2K4=;
        b=oR7D6YVsMqXc8wvTqXBPmsMwMDcxJGlehGS+CjwidmdOfSq5kAgBFnJF1oTc89TmQ+
         nsapeFkAc3MULmHEu6r3hSePcgeMP1YP4HH1fPBGLlcvwWWYNK3dzU5lq5wpDHEFaumt
         BKe8nZmFP2WG7E1TQyAtb3tkry7Jhr22pgC3AUNjV1lwIH7HEg9wlS7oPqJNGbas7aDK
         UvKw5l0bL7lilQEKXB8LJzx8zT0CULOa4n/YBb7V2PgS+RpGmXQTX0Dt1YsydQ8nE/bP
         Dcp2Hop6fRYRSA+dv+HpoOZXtwjp5RGosCTv/aAQ7ZhTe3+9a0HOPOmhxuTae42GKS99
         6wqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc;
        bh=p1SOwQB9RVJrr3MjWCfWkcJgZ5oqgCuchDhKQKih2K4=;
        b=6pT6gwk5gIYPHLX/qJJZ5TifNPiwXCNfPgNfaCA2OgIyWfJFB5rk9q8oTgtjYGNubN
         VoPJfFcDJwu7v0Jodbed69d1sUk23U2iZyAHIG52yIVFPBlu5yYvSZhCMJemXDsbAvIw
         MyKeqqNPLpOTRCe2u+/v5cUuhNzNTfhGMKeTa++g7PZjt0MC3k+vtvIiuxkTusVi+tav
         SfKdFTupprDYjqrKQvBqFPdY3FTQS0tsUIiDkvCzxZ1M1WIgQ7OFuSGdsHSwdN5ix9/u
         Y5H9M589OU92xUGZV4Ho7HJqmmPBUyn2/pLnTJJr08iEtR9Wty4eoDR9qFbhfyXPZs73
         tRFg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACgBeo0XdC9nexbsUGqnXuU+HPhyPJMi6mq+3RbO78lXyi89GC2ndAC7
	7iV4IPMBpobC9rLXLwFsDis=
X-Google-Smtp-Source: AA6agR505G7tnTthufE6lWZKNC0Z5QKp28EITYnI5kPXnbr6Bc1QXVz28pj3PuKxNFgrl/K4QIoEQg==
X-Received: by 2002:a17:90a:982:b0:1ef:f525:9801 with SMTP id 2-20020a17090a098200b001eff5259801mr4374360pjo.191.1660312973886;
        Fri, 12 Aug 2022 07:02:53 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:6542:0:b0:52f:8fa6:d8e with SMTP id z63-20020a626542000000b0052f8fa60d8els2038979pfb.5.-pod-prod-gmail;
 Fri, 12 Aug 2022 07:02:53 -0700 (PDT)
X-Received: by 2002:a63:8bc8:0:b0:41c:6800:d4e9 with SMTP id j191-20020a638bc8000000b0041c6800d4e9mr3119906pge.45.1660312972900;
        Fri, 12 Aug 2022 07:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1660312972; cv=none;
        d=google.com; s=arc-20160816;
        b=jSyVxC9wjXsA+3o/jhIECW5UzMXdo5YF0Rw/chRNjOh1nouKFT+vWnhjEiCKwUlq1Q
         Nyp6pi6SE4rf0aTHJQzBVyR58lwfsmGjzFrIGMlrZvphjtuVe75nML+GYdLvn+eaBBpH
         RyV0bDem8ZhJImgYBCLLEksLHnvIY3lpde8CHjgQe1MSMfwxKtB+S0eDwj8gqfm20Xbj
         gxt3Gqf7eDFIM81NKJXVMrxYkCH8nntng8UKX6MtPv7NPudeW0uhA+Uk5F32tTBqXv6A
         dKPsfgE5QFifzAFXj03xxmBsXU2ZroXIz6ww1OoUfJy+6grxbJ2oDtrNbArO8v2CsuQ2
         nH5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Lmq1oz6ZC4m5awQCBsFC3VCq9hpAYJiCiT2XZrwkX+Q=;
        b=eYX9R52HLRMtgV9u78PwdRxghKWJA3n7T+20TtElMpsfZW5ANGSHqk7A9UMMon4b/U
         ahM9R1K+Ktmga7jjlLbyB4sibwmIA0ijZwP1gQUfGcX2SCjVJ8ivu8lhFCTL+FgzQjWZ
         fTia7+Clu4wmVfIO6KbHWnZtF2QPhIJhmbyUaJ5FMnpOkQXusyajdiSyqaaVXAjv0Y0o
         +7rv6dJqLzCMTYudql8UIPvNe44DFRe+kS1V4zHzVMNMmIypje4mCTuyV/elueutIUUS
         wgNUA5IRwFExE/umnaUxpViZ1yu1MxT0CZsPHx4EaUagce7bWnwAaDk+2bVbnQsnnWcj
         iODg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=z6TOXBbO;
       spf=neutral (google.com: 2607:f8b0:4864:20::f2e is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com. [2607:f8b0:4864:20::f2e])
        by gmr-mx.google.com with ESMTPS id k18-20020aa79732000000b0052ce5dfc114si81800pfg.0.2022.08.12.07.02.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 07:02:52 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::f2e is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::f2e;
Received: by mail-qv1-xf2e.google.com with SMTP id u1so81206qvs.8
        for <linux-ntb@googlegroups.com>; Fri, 12 Aug 2022 07:02:52 -0700 (PDT)
X-Received: by 2002:ad4:4eeb:0:b0:474:8435:1508 with SMTP id dv11-20020ad44eeb000000b0047484351508mr3601983qvb.5.1660312971999;
        Fri, 12 Aug 2022 07:02:51 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a608:5600::59])
        by smtp.gmail.com with ESMTPSA id d1-20020a05622a100100b0034305a91aaesm1856742qte.83.2022.08.12.07.02.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:02:51 -0700 (PDT)
Date: Fri, 12 Aug 2022 10:02:49 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Frank Li <Frank.Li@nxp.com>
Cc: helgaas@kernel.org, kishon@ti.com, lorenzo.pieralisi@arm.com,
	kw@linux.com, jingoohan1@gmail.com, gustavo.pimentel@synopsys.com,
	lznuaa@gmail.com, hongxing.zhu@nxp.com, dave.jiang@intel.com,
	allenbh@gmail.com, linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
Message-ID: <YvZdiWoWb6njBvEA@kudzu.us>
References: <20220222162355.32369-1-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: base64
In-Reply-To: <20220222162355.32369-1-Frank.Li@nxp.com>
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=z6TOXBbO;       spf=neutral (google.com: 2607:f8b0:4864:20::f2e is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

T24gVHVlLCBGZWIgMjIsIDIwMjIgYXQgMTA6MjM6NTFBTSAtMDYwMCwgRnJhbmsgTGkgd3JvdGU6
DQo+IFRoaXMgaW1wbGVtZW50IE5UQiBmdW5jdGlvbiBmb3IgUENJZSBFUCB0byBSQyBjb25uZWN0
aW9ucy4NCj4gVGhlIGV4aXN0ZWQgbnRiIGVwZiBuZWVkIHR3byBQQ0kgRVBzIGFuZCB0d28gUENJ
IEhvc3QuDQo+IA0KPiBUaGlzIGp1c3QgbmVlZCBFUCB0byBSQyBjb25uZWN0aW9ucy4NCj4gDQo+
ICAgICDilIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJAgICAgICAgICDi
lIzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lJANCj4gICAgIOKUgiAgICAgICAgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICDilIINCj4gICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIzilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4gICAgIOKUgiBOVEIg
ICAgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgTlRCICAgICAg
ICAgIOKUgg0KPiAgICAg4pSCIE5ldERldiAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAg
ICAgICAgICAgIOKUgiBOZXREZXYgICAgICAg4pSCDQo+ICAgICDilJzilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilKQgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg
4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQo+ICAgICDi
lIIgTlRCICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCIE5U
QiAgICAgICAgICDilIINCj4gICAgIOKUgiBUcmFuc2ZlciAgIOKUgiAgICAgICAgIOKUgiAgICAg
ICAgICAgICAgICAgICAgICDilIIgVHJhbnNmZXIgICAgIOKUgg0KPiAgICAg4pSc4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkICAgICAgICAg4pSCICAgICAgICAgICAgICAg
ICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0K
PiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAg
IOKUgiAgICAgICAgICAgICAg4pSCDQo+ICAgICDilIIgIFBDSSBOVEIgICDilIIgICAgICAgICDi
lIIgICAgICAgICAgICAgICAgICAgICAg4pSCICAgICAgICAgICAgICDilIINCj4gICAgIOKUgiAg
ICBFUEYgICAgIOKUgiAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgICAgICAg
ICAgICAgIOKUgg0KPiAgICAg4pSCICAgRHJpdmVyICAg4pSCICAgICAgICAg4pSCICAgICAgICAg
ICAgICAgICAgICAgIOKUgiBQQ0kgVmlydHVhbCAg4pSCDQo+ICAgICDilIIgICAgICAgICAgICDi
lIIgICAgICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilJAgICAgICDilIIgTlRCIERyaXZlciAgIOKUgg0KPiAgICAg4pSCICAgICAgICAgICAg4pSC
ICAgICAgICAg4pSCIFBDSSBFUCBOVEIgICAg4pSC4peE4pSA4pSA4pSA4pSA4pa64pSCICAgICAg
ICAgICAgICDilIINCj4gICAgIOKUgiAgICAgICAgICAgIOKUgiAgICAgICAgIOKUgiAgRk4gRHJp
dmVyICAgIOKUgiAgICAgIOKUgiAgICAgICAgICAgICAg4pSCDQo+ICAgICDilJzilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAgICAgICDilJzilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQgICAgICDilJzilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4gICAgIOKUgiAgICAgICAgICAgIOKUgiAg
ICAgICAgIOKUgiAgICAgICAgICAgICAgIOKUgiAgICAgIOKUgiAgICAgICAgICAgICAg4pSCDQo+
ICAgICDilIIgIFBDSSBCVVMgICDilIIg4peE4pSA4pSA4pSA4pSA4pSA4pa6IOKUgiAgUENJIEVQ
IEJVUyAgIOKUgiAgICAgIOKUgiAgVmlydHVhbCBQQ0kg4pSCDQo+ICAgICDilIIgICAgICAgICAg
ICDilIIgIFBDSSAgICDilIIgICAgICAgICAgICAgICDilIIgICAgICDilIIgICAgIEJVUyAgICAg
IOKUgg0KPiAgICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSYICAg
ICAgICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS0
4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSYDQo+ICAgICAgICAgUENJIFJDICAgICAgICAgICAgICAgICAgICAgICAgUENJIEVQ
DQo+IA0KPiANCj4gDQo+IEZyYW5rIExpICg0KToNCj4gICBQQ0k6IGRlc2lnbndhcmUtZXA6IEFs
bG93IHBjaV9lcGNfc2V0X2JhcigpIHVwZGF0ZSBpbmJvdW5kIG1hcCBhZGRyZXNzDQo+ICAgTlRC
OiBlcGY6IEFsbG93IG1vcmUgZmxleGliaWxpdHkgaW4gdGhlIG1lbW9yeSBCQVIgbWFwIG1ldGhv
ZA0KPiAgIFBDSTogZW5kcG9pbnQ6IFN1cHBvcnQgTlRCIHRyYW5zZmVyIGJldHdlZW4gUkMgYW5k
IEVQDQo+ICAgRG9jdW1lbnRhdGlvbjogUENJOiBBZGQgc3BlY2lmaWNhdGlvbiBmb3IgdGhlIFBD
SSB2TlRCIGZ1bmN0aW9uIGRldmljZQ0KPiANCj4gIERvY3VtZW50YXRpb24vUENJL2VuZHBvaW50
L2luZGV4LnJzdCAgICAgICAgICB8ICAgIDIgKw0KPiAgLi4uL1BDSS9lbmRwb2ludC9wY2ktdm50
Yi1mdW5jdGlvbi5yc3QgICAgICAgIHwgIDEyNiArKw0KPiAgRG9jdW1lbnRhdGlvbi9QQ0kvZW5k
cG9pbnQvcGNpLXZudGItaG93dG8ucnN0IHwgIDE2NyArKw0KPiAgZHJpdmVycy9udGIvaHcvZXBm
L250Yl9od19lcGYuYyAgICAgICAgICAgICAgIHwgICA0OCArLQ0KPiAgLi4uL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYyAgIHwgICAxMCArLQ0KPiAgZHJpdmVycy9wY2kv
ZW5kcG9pbnQvZnVuY3Rpb25zL0tjb25maWcgICAgICAgIHwgICAxMSArDQo+ICBkcml2ZXJzL3Bj
aS9lbmRwb2ludC9mdW5jdGlvbnMvTWFrZWZpbGUgICAgICAgfCAgICAxICsNCj4gIGRyaXZlcnMv
cGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9wY2ktZXBmLXZudGIuYyB8IDE0MjQgKysrKysrKysrKysr
KysrKysNCj4gIDggZmlsZXMgY2hhbmdlZCwgMTc3NSBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlv
bnMoLSkNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9w
Y2ktdm50Yi1mdW5jdGlvbi5yc3QNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9u
L1BDSS9lbmRwb2ludC9wY2ktdm50Yi1ob3d0by5yc3QNCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvcGNpLWVwZi12bnRiLmMNCj4gDQo+IC0tIA0K
PiAyLjI0LjAucmMxDQo+IA0KDQpTb3JyeSBmb3IgdGhlIGV4dHJlbWVseSBsb25nIGRlbGF5IGlu
IHJlc3BvbnNlLiAgVGhpcyBzZXJpZXMgaGFzIGJlZW4NCmluIG15IG50Yi1uZXh0IGJyYW5jaCBm
b3Igc29tZSB0aW1lIGFuZCB3aWxsIGJlIGluIG15IHB1bGwgcmVxdWVzdCBmb3INCnY1LjIwIHdo
aWNoIHNob3VsZCBiZSBnb2luZyBvdXQgbGF0ZXIgdG9kYXkuDQoNClRoYW5rcywNCkpvbg0KDQot
LSAKWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0
byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtbnRiIiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJv
bSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBl
bWFpbCB0byBsaW51eC1udGIrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KVG8gdmlldyB0
aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29t
L2QvbXNnaWQvbGludXgtbnRiL1l2WmRpV29XYjZuakJ2RUElNDBrdWR6dS51cy4K
