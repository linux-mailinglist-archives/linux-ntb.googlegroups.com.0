Return-Path: <linux-ntb+bncBCOOP4VF5IDRBY7WQ75QKGQEPEOM22Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C7026C243
	for <lists+linux-ntb@lfdr.de>; Wed, 16 Sep 2020 13:47:49 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id u11sf3110778pls.16
        for <lists+linux-ntb@lfdr.de>; Wed, 16 Sep 2020 04:47:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600256867; cv=pass;
        d=google.com; s=arc-20160816;
        b=TQOCUtZeGBIbPTu/FAsLZ13VkzyYcNuPFGmzHlUAQ7+uW0UgSx6Zmjlt7x5mpek0t8
         iJLUxhcFQ+deut48utZFp2RSjSNM+Fs8fu9YVoU5STQP+x4bkGPfYwP3MrSoWD+l0rax
         wZ4Gg0Aso845woflpBV3X9e5KAXwwynWiVnKbPIGB0tZN2Q6MGO9k3xinTJey2QhLr0J
         MpexO9JH7S14IUl/KUtuWhgvSoNRLImEHxgMeptRwe82zJuwjnwvyBn+2xBSqefhf4Ds
         5Ep8LsEC+1+1NosUli90Mh4ycxl1VEBhHTrIxXRuMDadVGmBzNP65ftAjvdzDP5w7R0x
         VA9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=78M1eEWUIuWYUm7/+WHWXa78E7UY7jkUJE8MjA/1sSU=;
        b=IzpPNmNBEzJOPKDcFNj2eoAc137r2NzGTymhPHpXFNXctjA+v29swtQEKsu8y+SsD+
         syYDUEMAjNWogiFxOTWe6P/5nJMqZ6OQX+OKGo7oEjo1odB7q/uG/jTz8O06Ikrdw2tK
         XY8sh3CYlB9N0MCtm3lEwLFkIEd/8nRYBsWg6Amyc1EYVkRMj16CZ35KEE6lbXC7NjqU
         o4Jd1LNX51mqnMT/we/EPTM4DRHHXsXiqRcPdtT2hI9rTmIJwcg0qImnBQoVa1/C4cNd
         1wiuwcx4dcvs5hrhhxtg0eChh91F80f+QqU032QGdfDDlxy7MMc61Ul0isYpCXU9kXS6
         JdoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=IfP1zphg;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=78M1eEWUIuWYUm7/+WHWXa78E7UY7jkUJE8MjA/1sSU=;
        b=nO6eQ5/QsPtBX9wrntZ0W49G4ptzsXcYIOO1Y8yGUX06nU5/fDOJ6Uikd09VaBCZDy
         DeegPmHZ7PifADTfO7K3890ULgZA2bW0a9iLk1ZGsNHKTTSn6n8KidRYLuaetjvHDneh
         OOZciXWurBKwrVmoHAAGTaCUbEyXgpUh1aqiYCCPz11JtwRF7KlBPX6eGdBU3WfFX6Pq
         XX6bEJsPMV3Bev/G1dTDnywk6l1VnDD3yPknYb5aObTu9ade48bgSjqO2QgElqKBtEm6
         ChSjZwlRkyQe3IShEceIJ2zIXSLgAeU9+hjwxMpW5tvf+BC37/Nk+kCPgOYWvL3pH5iG
         Yv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=78M1eEWUIuWYUm7/+WHWXa78E7UY7jkUJE8MjA/1sSU=;
        b=RN0qW8Iw1Ik7wgxaVftULkwt58f8Hf+2hrBEyH30y80UHHozOPVta8kwHcLNqcJPed
         s1iHU9t27CVYta5t9JldbGspdT5KKSTsQ+6m6MDzZQhLm/a2R0XmEUW4DPv3mNH1x7Ma
         M1JgSq4G6gu3hvFswiuWhZgW7Z8WCf0eMo9fWFxErMkgzQ7hHxCDS0a3y1fzMFY4c1Fs
         Wo67LhN6eMm4cdduG37PpJ8FkXTDVj+RnDeWyMmZRTl6thd6zwh5yFM3P8P/I0A8B0EG
         rCGnmwCmDjt+t3q98IVuJ/s4uXhLkmL8LEL6n9cWUOqJTETGEeEwA+2E2sg1NugD1WPU
         FmUw==
X-Gm-Message-State: AOAM533qSC7DbUz2NH6cr70v8uDp7ao1EPs5FILlKkwCzq9iSC+sHsAL
	od+NwYCIJuGj/UJYw30B2fU=
X-Google-Smtp-Source: ABdhPJyuii009hoNxZk0NM6HZcG5WJ6prrKTXsGaFLStjmPRdobJMI+O8jXZ8fi7Eq3CjJuNbXmxxQ==
X-Received: by 2002:a62:4ed6:0:b029:142:2501:35ec with SMTP id c205-20020a624ed60000b0290142250135ecmr6320829pfb.76.1600256867547;
        Wed, 16 Sep 2020 04:47:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:2154:: with SMTP id kt20ls1033306pjb.1.gmail; Wed,
 16 Sep 2020 04:47:47 -0700 (PDT)
X-Received: by 2002:a17:902:b20d:b029:d0:92cc:a1dd with SMTP id t13-20020a170902b20db02900d092cca1ddmr23356216plr.12.1600256866997;
        Wed, 16 Sep 2020 04:47:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600256866; cv=none;
        d=google.com; s=arc-20160816;
        b=R7qi6piHjsDJUAEI0gQykWuPOzE2LHwaLNTNg+JAouI1wjqVnjHBLMuiLtrnmRYAaG
         QOfYvq2jud5X8MQlHvb674EXw+bJC6XCc5ksaPcHewOYf+3ewNo+DOp2Gcud9oKoSbHD
         qgxdeOMAQBUUOiriVlKf+JssAf61mg+bYWnEaxATUF6HrILKC3RPH/LCxxNaW0lB31tD
         GQer486wdIMjea6nF2owTTX8i6xM1Ui+zAgImsmWgPy0006Vdpt1PFo76r7Td7DsieSe
         1URJgnGNIBlMfYvOUI/yJztmialDT0oaGyBAnnM4A/GYdt1CGQ3edlxxVYs8g05ocrjH
         GGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3AGiro3FnSBmxJs2uBGM1pA1oOZ6S/GI8y/Cm28nbw4=;
        b=TefWhgycXmXOdG6A5sh8Q2XGt80AiGUwPCsrgWQ5SfJ+PgbLdNwsuQ4NLCiWXYwS1i
         XPRGzmRRt7bbu740Af+N0rF4f8Sr7CNnmOZV3wf6MguI9BHKFw/qVwsr9Yduo0kIeI+X
         EDrrdM1paXEraPlWeit5h9i9QDZMNl5oO4ReGMMW7bK0N7+4G8GDYAXrjfQu/2U9epYM
         uD7kVDjbTQkY5BXbbfuBktKYQ9jjKe+/eA1ccG/sYpOM82KXGOgzxZldq1+m1ZeL+6AV
         zEBgrKUvD/K3N9Mr5eDbW40Tu+wUH+kP9S3AphycwldA+NDo6XHDOAn6r1met5HtXHZ1
         mWZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=IfP1zphg;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id w15si274734pfu.6.2020.09.16.04.47.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 04:47:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08GBlfvq027172;
	Wed, 16 Sep 2020 06:47:41 -0500
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08GBlfhS000950
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 16 Sep 2020 06:47:41 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 16
 Sep 2020 06:47:40 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 16 Sep 2020 06:47:41 -0500
Received: from [10.250.232.147] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08GBlXSA024715;
	Wed, 16 Sep 2020 06:47:34 -0500
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: Jason Wang <jasowang@redhat.com>, Cornelia Huck <cohuck@redhat.com>
CC: "Michael S. Tsirkin" <mst@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Paolo Bonzini <pbonzini@redhat.com>,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Stefano Garzarella <sgarzare@redhat.com>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, <linux-pci@vger.kernel.org>,
        <kvm@vger.kernel.org>, <virtualization@lists.linux-foundation.org>,
        <netdev@vger.kernel.org>
References: <20200702082143.25259-1-kishon@ti.com>
 <20200702055026-mutt-send-email-mst@kernel.org>
 <603970f5-3289-cd53-82a9-aa62b292c552@redhat.com>
 <14c6cad7-9361-7fa4-e1c6-715ccc7e5f6b@ti.com>
 <59fd6a0b-8566-44b7-3dae-bb52b468219b@redhat.com>
 <ce9eb6a5-cd3a-a390-5684-525827b30f64@ti.com>
 <da2b671c-b05d-a57f-7bdf-8b1043a41240@redhat.com>
 <fee8a0fb-f862-03bd-5ede-8f105b6af529@ti.com>
 <b2178e1d-2f5c-e8a3-72fb-70f2f8d6aa45@redhat.com>
 <45a8a97c-2061-13ee-5da8-9877a4a3b8aa@ti.com>
 <c8739d7f-e12e-f6a2-7018-9eeaf6feb054@redhat.com>
 <20200828123409.4cd2a812.cohuck@redhat.com>
 <ac8f7e4f-9f46-919a-f5c2-89b07794f0ab@ti.com>
 <9cd58cd1-0041-3d98-baf7-6e5bc2e7e317@redhat.com>
 <edf25301-93c0-4ba6-aa85-5f04137d0906@ti.com>
 <5733dbfc-76c1-45dc-6dce-ef5449eacc73@redhat.com>
 <181ae83d-edeb-9406-27cc-1195fe29ae95@ti.com>
 <ee0aa81d-064b-d7a7-86bb-79a3f4d3dd11@redhat.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <67924594-c70e-390e-ce2e-dda41a94ada1@ti.com>
Date: Wed, 16 Sep 2020 17:17:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ee0aa81d-064b-d7a7-86bb-79a3f4d3dd11@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=IfP1zphg;       spf=pass
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

Hi Jason,

On 16/09/20 8:40 am, Jason Wang wrote:
>=20
> On 2020/9/15 =E4=B8=8B=E5=8D=8811:47, Kishon Vijay Abraham I wrote:
>> Hi Jason,
>>
>> On 15/09/20 1:48 pm, Jason Wang wrote:
>>> Hi Kishon:
>>>
>>> On 2020/9/14 =E4=B8=8B=E5=8D=883:23, Kishon Vijay Abraham I wrote:
>>>>> Then you need something that is functional equivalent to virtio PCI
>>>>> which is actually the concept of vDPA (e.g vDPA provides
>>>>> alternatives if
>>>>> the queue_sel is hard in the EP implementation).
>>>> Okay, I just tried to compare the 'struct vdpa_config_ops' and 'struct
>>>> vhost_config_ops' ( introduced in [RFC PATCH 03/22] vhost: Add ops for
>>>> the VHOST driver to configure VHOST device).
>>>>
>>>> struct vdpa_config_ops {
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Virtqueue ops */
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_address)(struct vdpa_device=
 *vdev,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 idx, u64 desc_area, u64 driver_=
area,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 device_area);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_num)(struct vdpa_device *v=
dev, u16 idx, u32 num);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*kick_vq)(struct vdpa_device *vdev=
, u16 idx);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_cb)(struct vdpa_device *vd=
ev, u16 idx,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 struct vdpa_callback *cb);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_ready)(struct vdpa_device =
*vdev, u16 idx, bool
>>>> ready);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0bool (*get_vq_ready)(struct vdpa_device =
*vdev, u16 idx);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_state)(struct vdpa_device *=
vdev, u16 idx,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct vdpa_vq_state *state);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_state)(struct vdpa_device *=
vdev, u16 idx,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct vdpa_vq_state *state);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vdpa_notification_area
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(*get_vq_notification)(struct vdpa_devic=
e *vdev, u16 idx);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* vq irq is not expected to be changed =
once DRIVER_OK is set */
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_irq)(struct vdpa_device *vd=
v, u16 idx);
>>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Device ops */
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vq_align)(struct vdpa_device *=
vdev);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u64 (*get_features)(struct vdpa_device *=
vdev);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_features)(struct vdpa_device *=
vdev, u64 features);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_config_cb)(struct vdpa_device=
 *vdev,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct vdpa_callback *cb);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 (*get_vq_num_max)(struct vdpa_device=
 *vdev);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_device_id)(struct vdpa_device =
*vdev);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vendor_id)(struct vdpa_device =
*vdev);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 (*get_status)(struct vdpa_device *vde=
v);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_status)(struct vdpa_device *v=
dev, u8 status);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*get_config)(struct vdpa_device *v=
dev, unsigned int offset,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 void *buf, unsigned int len);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*set_config)(struct vdpa_device *v=
dev, unsigned int offset,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const void *buf, unsigned int len);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_generation)(struct vdpa_device=
 *vdev);
>>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* DMA ops */
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*set_map)(struct vdpa_device *vdev,=
 struct vhost_iotlb
>>>> *iotlb);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*dma_map)(struct vdpa_device *vdev,=
 u64 iova, u64 size,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 u64 pa, u32 perm);
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*dma_unmap)(struct vdpa_device *vde=
v, u64 iova, u64 size);
>>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Free device resources */
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*free)(struct vdpa_device *vdev);
>>>> };
>>>>
>>>> +struct vhost_config_ops {
>>>> +=C2=A0=C2=A0=C2=A0 int (*create_vqs)(struct vhost_dev *vdev, unsigned=
 int nvqs,
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 unsigned int num_bufs, struct vhost_virtqueue *vqs[],
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 vhost_vq_callback_t *callbacks[],
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 const char * const names[]);
>>>> +=C2=A0=C2=A0=C2=A0 void (*del_vqs)(struct vhost_dev *vdev);
>>>> +=C2=A0=C2=A0=C2=A0 int (*write)(struct vhost_dev *vdev, u64 vhost_dst=
, void *src,
>>>> int len);
>>>> +=C2=A0=C2=A0=C2=A0 int (*read)(struct vhost_dev *vdev, void *dst, u64=
 vhost_src, int
>>>> len);
>>>> +=C2=A0=C2=A0=C2=A0 int (*set_features)(struct vhost_dev *vdev, u64 de=
vice_features);
>>>> +=C2=A0=C2=A0=C2=A0 int (*set_status)(struct vhost_dev *vdev, u8 statu=
s);
>>>> +=C2=A0=C2=A0=C2=A0 u8 (*get_status)(struct vhost_dev *vdev);
>>>> +};
>>>> +
>>>> struct virtio_config_ops
>>>> I think there's some overlap here and some of the ops tries to do the
>>>> same thing.
>>>>
>>>> I think it differs in (*set_vq_address)() and (*create_vqs)().
>>>> [create_vqs() introduced in struct vhost_config_ops provides
>>>> complimentary functionality to (*find_vqs)() in struct
>>>> virtio_config_ops. It seemingly encapsulates the functionality of
>>>> (*set_vq_address)(), (*set_vq_num)(), (*set_vq_cb)(),..].
>>>>
>>>> Back to the difference between (*set_vq_address)() and (*create_vqs)()=
,
>>>> set_vq_address() directly provides the virtqueue address to the vdpa
>>>> device but create_vqs() only provides the parameters of the virtqueue
>>>> (like the number of virtqueues, number of buffers) but does not
>>>> directly
>>>> provide the address. IMO the backend client drivers (like net or vhost=
)
>>>> shouldn't/cannot by itself know how to access the vring created on
>>>> virtio front-end. The vdpa device/vhost device should have logic for
>>>> that. That will help the client drivers to work with different types o=
f
>>>> vdpa device/vhost device and can access the vring created by virtio
>>>> irrespective of whether the vring can be accessed via mmio or kernel
>>>> space or user space.
>>>>
>>>> I think vdpa always works with client drivers in userspace and
>>>> providing
>>>> userspace address for vring.
>>>
>>> Sorry for being unclear. What I meant is not replacing vDPA with the
>>> vhost(bus) you proposed but the possibility of replacing virtio-pci-epf
>>> with vDPA in:
>> Okay, so the virtio back-end still use vhost and front end should use
>> vDPA. I see. So the host side PCI driver for EPF should populate
>> vdpa_config_ops and invoke vdpa_register_device().
>=20
>=20
> Yes.
>=20
>=20
>>> My question is basically for the part of virtio_pci_epf_send_command(),
>>> so it looks to me you have a vendor specific API to replace the
>>> virtio-pci layout of the BAR:
>> Even when we use vDPA, we have to use some sort of
>> virtio_pci_epf_send_command() to communicate with virtio backend right?
>=20
>=20
> Right.
>=20
>=20
>>
>> Right, the layout is slightly different from the standard layout.
>>
>> This is the layout
>> struct epf_vhost_reg_queue {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd_status;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 status;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 num_buffers;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 msix_vector;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 queue_addr;
>=20
>=20
> What's the meaning of queue_addr here?

Using queue_addr, the virtio front-end communicates the address of the
allocated memory for virtqueue to the virtio back-end.
>=20
> Does not mean the device expects a contiguous memory for avail/desc/used
> ring?

It's contiguous memory. Isn't this similar to other virtio transport
(both PCI legacy and modern interface)?.
>=20
>=20
>> } __packed;
>>
>> struct epf_vhost_reg {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 host_features;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 guest_features;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 msix_config;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 num_queues;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 device_status;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 config_generation;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 isr;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u8 cmd_status;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct epf_vhost_reg_qu=
eue vq[MAX_VQS];
>> } __packed;
>>>
>>> +static int virtio_pci_epf_send_command(struct virtio_pci_device
>>> *vp_dev,
>>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 command)
>>> +{
>>> +=C2=A0=C2=A0=C2=A0 struct virtio_pci_epf *pci_epf;
>>> +=C2=A0=C2=A0=C2=A0 void __iomem *ioaddr;
>>> +=C2=A0=C2=A0=C2=A0 ktime_t timeout;
>>> +=C2=A0=C2=A0=C2=A0 bool timedout;
>>> +=C2=A0=C2=A0=C2=A0 int ret =3D 0;
>>> +=C2=A0=C2=A0=C2=A0 u8 status;
>>> +
>>> +=C2=A0=C2=A0=C2=A0 pci_epf =3D to_virtio_pci_epf(vp_dev);
>>> +=C2=A0=C2=A0=C2=A0 ioaddr =3D vp_dev->ioaddr;
>>> +
>>> +=C2=A0=C2=A0=C2=A0 mutex_lock(&pci_epf->lock);
>>> +=C2=A0=C2=A0=C2=A0 writeb(command, ioaddr + HOST_CMD);
>>> +=C2=A0=C2=A0=C2=A0 timeout =3D ktime_add_ms(ktime_get(), COMMAND_TIMEO=
UT);
>>> +=C2=A0=C2=A0=C2=A0 while (1) {
>>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 timedout =3D ktime_after(ktime_g=
et(), timeout);
>>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D readb(ioaddr + HOST_C=
MD_STATUS);
>>> +
>>>
>>> Several questions:
>>>
>>> - It's not clear to me how the synchronization is done between the RC
>>> and EP. E.g how and when the value of HOST_CMD_STATUS can be changed.
>> The HOST_CMD (commands sent to the EP) is serialized by using mutex.
>> Once the EP reads the command, it resets the value in HOST_CMD. So
>> HOST_CMD is less likely an issue.
>=20
>=20
> Here's my understanding of the protocol:
>=20
> 1) RC write to HOST_CMD
> 2) RC wait for HOST_CMD_STATUS to be HOST_CMD_STATUS_OKAY

That's right!
>=20
> It looks to me what EP should do is
>=20
> 1) EP reset HOST_CMD after reading new command

That's right! It does.
>=20
> And it looks to me EP should also reset HOST_CMD_STATUS here?

yeah, that would require RC to send another command to reset the status.
Didn't see it required in the normal scenario but good to add this.
>=20
> (I thought there should be patch to handle stuffs like this but I didn't
> find it in this series)

This is added in [RFC PATCH 19/22] PCI: endpoint: Add EP function driver
to provide VHOST interface

pci_epf_vhost_cmd_handler() gets commands from RC using "reg->cmd;". On
the EP side, it is local memory access (mapped to BAR memory exposed to
the host) and hence accessed using structure member access.
>=20
>=20
>>
>> A sufficiently large time is given for the EP to complete it's operation
>> (1 Sec) where the EP provides the status in HOST_CMD_STATUS. After it
>> expires, HOST_CMD_STATUS_NONE is written to HOST_CMD_STATUS. There could
>> be case where EP updates HOST_CMD_STATUS after RC writes
>> HOST_CMD_STATUS_NONE, but by then HOST has already detected this as
>> failure and error-ed out.
>> =C2=A0
>>> If you still want to introduce a new transport, a virtio spec patch
>>> would be helpful for us to understand the device API.
>> Okay, that should be on https://github.com/oasis-tcs/virtio-spec.git?
>=20
>=20
> Yes.
>=20
>=20
>>> - You have you vendor specific layout (according to
>>> virtio_pci_epb_table()), so I guess you it's better to have a vendor
>>> specific vDPA driver instead
>> Okay, with vDPA, we are free to define our own layouts.
>=20
>=20
> Right, but vDPA have other requirements. E.g it requires the device have
> the ability to save/restore the state (e.g the last_avail_idx).
>=20
> So it actually depends on what you want. If you don't care about
> userspace drivers and want to have a standard transport, you can still
> go virtio.

okay.
>=20
>=20
>>> - The advantage of vendor specific vDPA driver is that it can 1) have
>>> less codes 2) support userspace drivers through vhost-vDPA (instead of
>>> inventing new APIs since we can't use vfio-pci here).
>> I see there's an additional level of indirection from virtio to vDPA and
>> probably no need for spec update but don't exactly see how it'll reduce
>> code.
>=20
>=20
> AFAIK you don't need to implement your own setup_vq and del_vq.
>=20
There should still be some entity that allocates memory for virtqueues
and then communicate this address to the backend.

Maybe I have to look this further.
>=20
>>
>> For 2, Isn't vhost-vdpa supposed to run on virtio backend?
>=20
>=20
> Not currently, vDPA is a superset of virtio (e.g it support virtqueue
> state save/restore). This it should be possible in the future probably.
>=20
>=20
>>
>> =C2=A0From a high level, I think I should be able to use vDPA for
>> virtio_pci_epf.c. Would you also suggest using vDPA for ntb_virtio.c?
>> ([RFC PATCH 20/22] NTB: Add a new NTB client driver to implement VIRTIO
>> functionality).
>=20
>=20
> I think it's your call. If you want
>=20
> 1) a well-defined standard virtio transport
> 2) willing to finalize d and maintain the spec
> 3) doesn't care about userspace drivers

IIUC, we can use vDPA (virtio_vdpa.c) but still don't need userspace
drivers right?
>=20
> You can go with virtio, otherwise vDPA.

Okay, let me see. Thanks for your inputs.

Best Regards,
Kishon

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/67924594-c70e-390e-ce2e-dda41a94ada1%40ti.com.
