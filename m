Return-Path: <linux-ntb+bncBCHOPY7NVYCRBGXNVGIQMGQEAKVJMEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4132B4D5420
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 23:07:23 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id y13-20020adfee0d000000b001f1fa450a3dsf2161952wrn.11
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Mar 2022 14:07:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1646950043; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVRJ2G4uE4R85Zx+ltQcIEggdHAS9Q07/NJdXX5g0rWYExP48zS8hd6mXbEj6fpnP/
         t7Ym1KZBy2Lnq74BRPaIrtBh4T7WUCjHAS3qqmEq3mEElr+jCUox22yltWgAd9Fmb5jS
         1bFn0oBxL8dio7Yg8Srtv/S7TQTkheDtYpe2PyOE7GxypynYVNbgmFDQn2+dj65sB+sP
         cjDY5/P23G2aT+VZ1+VzlGRE4RWve15oQ1gw4jmaYxAiNITksVG6VQMZH2vTxjWeVJIt
         YtuVo888ZQeKQf7Gl3mTN/KkGJE7u/yYHJVoFti23FSG/jkwozZZKCCUrHnjS7vT6dLU
         +bJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=Z0sBtN5dKt2YuNFa45G5hXt4oOwy81kZtP9eAdKAJiA=;
        b=k3K6DhJCmyOcha6QSyNmcQ3lFfrwWRoTfvClfgf61ZAA26jLMduEeBgO+qh5lD8xjm
         7rPlIe6aJryfEfbytjTGUnIRf3nJX22Ar65im9jCMlBiTGF3MMtQkRKXL09LEXBvQW/z
         xHsHC1sUR/lZXOaTfM2MKAI91Cfdu+Ztbdz9bGcbIgduu9Ku/QhRtl9fmF28q8CviwMm
         5i5/kNWZzGHlvNiA9Frl/XCfHtsFYhOcDClZXk0aeYZ/ldZp7TbeHL0STjRSrJf5Ksy3
         CRBsCbuC/RnTOG8yPklleI7oFTGLgEIE6L3gANLT7wLxUmKS5QrQQG0H/GmH4MKQxNjf
         fnHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TkvBCjiC;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z0sBtN5dKt2YuNFa45G5hXt4oOwy81kZtP9eAdKAJiA=;
        b=P83pianWRh0kAPbKakMvx5S750Nj2Z8dhcdGONpDmomdR4CX+FXLWfmVtefF3gfB/E
         LpItUHSXRyU4Jem5KzxStM+pDgADF4sFFfo+22U9a5ISTmlROOv2oNmW++U/eRmrthcj
         luNpMGRImofI++tF7VqWbjb6cuqOWhOc4KumS9wprpQDnYAEJhUadGBwAiVjuF56NZdt
         KTCOjbFm3oQiJn5n8UWDS7+PpEmeH9i2PDquXkMRyf3Qidz+tOapdtg6ZVLX72hO9X8G
         l2wCoDPKwRZP/i7DbchbOhTnkTGV0sTg1RnPNiG3P9p3M8xfmZxvKx2HoUyNPKq6Il6P
         3row==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z0sBtN5dKt2YuNFa45G5hXt4oOwy81kZtP9eAdKAJiA=;
        b=LBpwJX7tflPdlfjZrrM9MIv2vD29VlwvlhPWzfNbEIioXt/RC7stL0c2Twp06bPA12
         g3uPEZzxng3XfB5zywpT+R7J+opDmt9awDqRJtI9L1KEv5a+zhOJQvEkQN7//jFYmfpv
         uy9XryXAosjw3pP3swu9HpDMFJmq9H0vcCqu3aFJwan16Mo9fWIRCycK6dl++LqIZo9m
         zYeQowesjSZIeJHJOxqLqg9kBH9sM7xZyprgb27kpHfpG4j4WRQWiWu/sbia9Gezvtqk
         59ieU4bD+rNeMjvpkOMhR8fkobrCJGQnk/zINNHNnhNEPm47KJQYKf31JnG7r84KcZl4
         7dJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z0sBtN5dKt2YuNFa45G5hXt4oOwy81kZtP9eAdKAJiA=;
        b=BJYR4IYZIpHu6QUGzTTn5pjx8uO2i9aHM4ZfF5ZdNMC+61EAERG19ANvXiR6m7SA+2
         viRmvXA4ZSB1qZrqSRaec+48525JgHsySjztWtFJjwFdfckhf5SMpujTzWuc9kW2dwZI
         KvevqaJK72oB1JU1tLSNiaWdJtcjBR+IdkDzSHx7JAFimseRIOH9vWcWoZxlOLtAVto9
         Y628dPHlQWMKJiGYR7Lo1cSLuuny9H1dijNWlReGKnuqrI5czHpfB2Y+CL3qs65NqB2n
         a0t5EdvZ8O8pVK3Z7A9nru3fjwiFIedVTFyrOb8h0EYSqcBgWWBmu4ZNOIU8zJwgyPtl
         GcGQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532u0WRCruXsNV7pQl26f6ZBP7mI3JuR+NUgik/YCt5BFO9rOFUr
	i9b6drzNOVm2HkcIn2Bamug=
X-Google-Smtp-Source: ABdhPJx7kztAu8/OwvBGhUxSnWkoGR5BwLsd6ZHtPu1vwNNyckGDQt0kXu3Yesvg3TtsbuTgwb9QgA==
X-Received: by 2002:a7b:ca57:0:b0:381:570c:ed95 with SMTP id m23-20020a7bca57000000b00381570ced95mr5318510wml.169.1646950042839;
        Thu, 10 Mar 2022 14:07:22 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:584e:0:b0:203:8599:7254 with SMTP id i14-20020a5d584e000000b0020385997254ls40897wrf.0.gmail;
 Thu, 10 Mar 2022 14:07:21 -0800 (PST)
X-Received: by 2002:a5d:648c:0:b0:1ed:b04d:300 with SMTP id o12-20020a5d648c000000b001edb04d0300mr5083864wri.347.1646950041881;
        Thu, 10 Mar 2022 14:07:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1646950041; cv=none;
        d=google.com; s=arc-20160816;
        b=zhmcSmsSR4sMvO/UABXMUpo/astvUe5JWMMb1j/CLa81Wyv1nkyrWtnAC/MEo50Rdz
         Vg3uupcHnRoCUNBltHlSi6SAOwHpYfUHdmrAvdD+S7g5mN1xZ+6+ALOkPgP3VGhUoFHC
         f15uicjN3ne4z7YTcmbVh/j82UKk7ptAEx+sBXVMf3a/c4VcrkU+ziftSJ8VIk4RGQRN
         asMUtFw/Q3xvPCqoN/jIKmmiMb8tcU7L50+lc6RN8UII+64d6uY4Kfub13g/SLHgbHnb
         /qYAgCikJmF5UkbfN2qTQu4WMmTZn0pu6kOMmF5JHFyQIj+kyIudMV0p/i2nLF3ZBLYk
         zMRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fvPFEiPU5UyRC1KvHgTbAeXANF7Wd/3XWoxoO/Ay+ws=;
        b=XV9wGCXTECtSHn0/hf9njCqAqtjwxTDqLcaWOJ2zjYDQwN+a/FITinh1qQmn9z4+lA
         E9dKI8KC11c+ETJCK9m0IhDNCM30MEI6Ne9p61+oHxB/bRWuOh/cCSMYpMEWpwruEIfD
         4JLnNgrQwQdRlQx3myhJuuheU3Qf4nLCVxdybSjmAzzoZouAUPQtowJ1r1THOwyY8O8V
         snWiTU4U0JYVL7EkdIOGywgb7sgZRi6udiXLYfsHhnDTUUGij/zOHPrU8ln/X1jn5jdR
         fRqQ6znTUTESXsqTrDiHLpfcY1JXnyTxAq6Jh+sqCd6HJswe2yEp5ZA1pU1WG5MYcYnO
         JIvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=TkvBCjiC;
       spf=pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=lznuaa@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id 189-20020a1c02c6000000b00387e237f125si620461wmc.3.2022.03.10.14.07.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 14:07:21 -0800 (PST)
Received-SPF: pass (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id g20so8758812edw.6
        for <linux-ntb@googlegroups.com>; Thu, 10 Mar 2022 14:07:21 -0800 (PST)
X-Received: by 2002:a05:6402:1e89:b0:416:a641:9fe with SMTP id
 f9-20020a0564021e8900b00416a64109femr6334748edf.312.1646950041456; Thu, 10
 Mar 2022 14:07:21 -0800 (PST)
MIME-Version: 1.0
References: <20220222162355.32369-1-Frank.Li@nxp.com> <CAHrpEqTFP7SUgoTFq5Dn2-rOrAL_DCX97nRww7o_xnDJ+zDmtw@mail.gmail.com>
In-Reply-To: <CAHrpEqTFP7SUgoTFq5Dn2-rOrAL_DCX97nRww7o_xnDJ+zDmtw@mail.gmail.com>
From: Zhi Li <lznuaa@gmail.com>
Date: Thu, 10 Mar 2022 16:07:10 -0600
Message-ID: <CAHrpEqTTuJhK5-kB7Q2SLt3uTvcef+ehDUA8v_f1-Zna1UN+CQ@mail.gmail.com>
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
 header.i=@gmail.com header.s=20210112 header.b=TkvBCjiC;       spf=pass
 (google.com: domain of lznuaa@gmail.com designates 2a00:1450:4864:20::530 as
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

T24gVGh1LCBNYXIgMTAsIDIwMjIgYXQgNDowMSBQTSBaaGkgTGkgPGx6bnVhYUBnbWFpbC5jb20+
IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEZlYiAyMiwgMjAyMiBhdCAxMDoyNCBBTSBGcmFuayBMaSA8
RnJhbmsuTGlAbnhwLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBUaGlzIGltcGxlbWVudCBOVEIgZnVu
Y3Rpb24gZm9yIFBDSWUgRVAgdG8gUkMgY29ubmVjdGlvbnMuDQo+ID4gVGhlIGV4aXN0ZWQgbnRi
IGVwZiBuZWVkIHR3byBQQ0kgRVBzIGFuZCB0d28gUENJIEhvc3QuDQo+ID4NCj4gPiBUaGlzIGp1
c3QgbmVlZCBFUCB0byBSQyBjb25uZWN0aW9ucy4NCj4gPg0KPiA+ICAgICDilIzilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilJAgICAgICAgICDilIzilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCj4gPiAgICAg4pSCICAg
ICAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIOKUgg0KPiA+ICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lKQgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQo+ID4gICAgIOKUgiBOVEIgICAgICAgIOKUgiAg
ICAgICAgIOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgTlRCICAgICAgICAgIOKUgg0KPiA+
ICAgICDilIIgTmV0RGV2ICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg
4pSCIE5ldERldiAgICAgICDilIINCj4gPiAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSkICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAgIOKUnOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiA+ICAgICDilIIgTlRC
ICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCIE5UQiAgICAg
ICAgICDilIINCj4gPiAgICAg4pSCIFRyYW5zZmVyICAg4pSCICAgICAgICAg4pSCICAgICAgICAg
ICAgICAgICAgICAgIOKUgiBUcmFuc2ZlciAgICAg4pSCDQo+ID4gICAgIOKUnOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUgiAgICAgICAgICAgICAgICAg
ICAgICDilJzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKQNCj4g
PiAgICAg4pSCICAgICAgICAgICAg4pSCICAgICAgICAg4pSCICAgICAgICAgICAgICAgICAgICAg
IOKUgiAgICAgICAgICAgICAg4pSCDQo+ID4gICAgIOKUgiAgUENJIE5UQiAgIOKUgiAgICAgICAg
IOKUgiAgICAgICAgICAgICAgICAgICAgICDilIIgICAgICAgICAgICAgIOKUgg0KPiA+ICAgICDi
lIIgICAgRVBGICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICAgICAgICAg4pSCICAg
ICAgICAgICAgICDilIINCj4gPiAgICAg4pSCICAgRHJpdmVyICAg4pSCICAgICAgICAg4pSCICAg
ICAgICAgICAgICAgICAgICAgIOKUgiBQQ0kgVmlydHVhbCAg4pSCDQo+ID4gICAgIOKUgiAgICAg
ICAgICAgIOKUgiAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUkCAgICAgIOKUgiBOVEIgRHJpdmVyICAg4pSCDQo+ID4gICAgIOKUgiAgICAg
ICAgICAgIOKUgiAgICAgICAgIOKUgiBQQ0kgRVAgTlRCICAgIOKUguKXhOKUgOKUgOKUgOKUgOKW
uuKUgiAgICAgICAgICAgICAg4pSCDQo+ID4gICAgIOKUgiAgICAgICAgICAgIOKUgiAgICAgICAg
IOKUgiAgRk4gRHJpdmVyICAgIOKUgiAgICAgIOKUgiAgICAgICAgICAgICAg4pSCDQo+ID4gICAg
IOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgICAgIOKUnOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpCAgICAgIOKUnOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUpA0KPiA+ICAgICDilIIg
ICAgICAgICAgICDilIIgICAgICAgICDilIIgICAgICAgICAgICAgICDilIIgICAgICDilIIgICAg
ICAgICAgICAgIOKUgg0KPiA+ICAgICDilIIgIFBDSSBCVVMgICDilIIg4peE4pSA4pSA4pSA4pSA
4pSA4pa6IOKUgiAgUENJIEVQIEJVUyAgIOKUgiAgICAgIOKUgiAgVmlydHVhbCBQQ0kg4pSCDQo+
ID4gICAgIOKUgiAgICAgICAgICAgIOKUgiAgUENJICAgIOKUgiAgICAgICAgICAgICAgIOKUgiAg
ICAgIOKUgiAgICAgQlVTICAgICAg4pSCDQo+ID4gICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUmCAgICAgICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKUgOKUgOKUtOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmA0KPiA+ICAgICAgICAgUENJIFJDICAgICAg
ICAgICAgICAgICAgICAgICAgUENJIEVQDQo+ID4NCj4gPg0KPiA+DQo+ID4gRnJhbmsgTGkgKDQp
Og0KPiA+ICAgUENJOiBkZXNpZ253YXJlLWVwOiBBbGxvdyBwY2lfZXBjX3NldF9iYXIoKSB1cGRh
dGUgaW5ib3VuZCBtYXAgYWRkcmVzcw0KPiA+ICAgTlRCOiBlcGY6IEFsbG93IG1vcmUgZmxleGli
aWxpdHkgaW4gdGhlIG1lbW9yeSBCQVIgbWFwIG1ldGhvZA0KPiA+ICAgUENJOiBlbmRwb2ludDog
U3VwcG9ydCBOVEIgdHJhbnNmZXIgYmV0d2VlbiBSQyBhbmQgRVANCj4gPiAgIERvY3VtZW50YXRp
b246IFBDSTogQWRkIHNwZWNpZmljYXRpb24gZm9yIHRoZSBQQ0kgdk5UQiBmdW5jdGlvbiBkZXZp
Y2UNCj4gPg0KPg0KDQpVcGRhdGUgbnRiIG1haWwgbGlzdA0KDQo+DQo+ID4gIERvY3VtZW50YXRp
b24vUENJL2VuZHBvaW50L2luZGV4LnJzdCAgICAgICAgICB8ICAgIDIgKw0KPiA+ICAuLi4vUENJ
L2VuZHBvaW50L3BjaS12bnRiLWZ1bmN0aW9uLnJzdCAgICAgICAgfCAgMTI2ICsrDQo+ID4gIERv
Y3VtZW50YXRpb24vUENJL2VuZHBvaW50L3BjaS12bnRiLWhvd3RvLnJzdCB8ICAxNjcgKysNCj4g
PiAgZHJpdmVycy9udGIvaHcvZXBmL250Yl9od19lcGYuYyAgICAgICAgICAgICAgIHwgICA0OCAr
LQ0KPiA+ICAuLi4vcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZGVzaWdud2FyZS1lcC5jICAgfCAg
IDEwICstDQo+ID4gIGRyaXZlcnMvcGNpL2VuZHBvaW50L2Z1bmN0aW9ucy9LY29uZmlnICAgICAg
ICB8ICAgMTEgKw0KPiA+ICBkcml2ZXJzL3BjaS9lbmRwb2ludC9mdW5jdGlvbnMvTWFrZWZpbGUg
ICAgICAgfCAgICAxICsNCj4gPiAgZHJpdmVycy9wY2kvZW5kcG9pbnQvZnVuY3Rpb25zL3BjaS1l
cGYtdm50Yi5jIHwgMTQyNCArKysrKysrKysrKysrKysrKw0KPiA+ICA4IGZpbGVzIGNoYW5nZWQs
IDE3NzUgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+ID4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBEb2N1bWVudGF0aW9uL1BDSS9lbmRwb2ludC9wY2ktdm50Yi1mdW5jdGlvbi5yc3QNCj4g
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vUENJL2VuZHBvaW50L3BjaS12bnRi
LWhvd3RvLnJzdA0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9wY2kvZW5kcG9pbnQv
ZnVuY3Rpb25zL3BjaS1lcGYtdm50Yi5jDQo+ID4NCj4gPiAtLQ0KPiA+IDIuMjQuMC5yYzENCj4g
Pg0KDQotLSAKWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2Ny
aWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGludXgtbnRiIiBncm91cC4KVG8gdW5zdWJzY3Jp
YmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2Vu
ZCBhbiBlbWFpbCB0byBsaW51eC1udGIrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KVG8g
dmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdlYiB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29n
bGUuY29tL2QvbXNnaWQvbGludXgtbnRiL0NBSHJwRXFUVHVKaEs1LWtCN1EyU0x0M3VUdmNlZiUy
QmVoRFVBOHZfZjEtWm5hMVVOJTJCQ1ElNDBtYWlsLmdtYWlsLmNvbS4K
