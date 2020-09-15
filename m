Return-Path: <linux-ntb+bncBCOOP4VF5IDRBO6EQP5QKGQEHKRSZAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9BA26A90E
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 17:48:12 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id v106sf1607224ybi.6
        for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 08:48:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600184891; cv=pass;
        d=google.com; s=arc-20160816;
        b=YNGwduDAVIcpi2FCzEBNG1oL0WSDAsfcXae+adk4TZVxRisobxOFSYvg9eIYU2towa
         Q9qUzJc7f+qM2HJ5mROPGGLrSoLTVaH+qHxuj/ayAITWX3wMqRpA5XqRoIlA3y7WyUoP
         M83Uj0pkxz1sM39lzCqWaUkjvY9rw4l5FEkrJp0/8FP0aH92DLGSeFpyO6dnzOGHQA4z
         jeUDZDljxyksZZ5OICzdVi5aZwG2x20qEsw+fNp+u0RB25GHCd4419MOQ5BldlgZVoX6
         Fls+vDXOfUyRCfyG2xj0KMPYbJx1BSGpvJG6BfLGGz+K67CNArnlCYb/vqbut9gZ5cHW
         HAXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=F54uB3+4nMYSuGW06DvL5tgbdNeMuyLNFmLcLRp0chU=;
        b=e2t8q9X0fPAjn0scK51tG6ZF6yu4g7YXu37cfYER/G6ZlJd+ybWWeb9nwipw4Udbfm
         hyU/iilmrezVBSjn68CUK2RN0IsPX0IM/qMUvQTbuRvAJEIB/1yfalw42welJcyka0gT
         aQc40luPOQ9/qwAwJ+gAi6HjTXFcgftTx5jHrWIh5ScFCYmjz5tn3ZKEeAVvUTq5itGq
         ATE1DyaawOsnHHGSuMZUW7geV+gUnMOVgnZhlRd2NaZ7l3ZrqTcolru11HprkgUZmHh2
         JYnemTHAkzRniwn9yD354eOiaQZbeUAqcel9Y62Z48PLELkEm5n7vHpjhYEYPP+706kb
         6l7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qBkSaaGG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F54uB3+4nMYSuGW06DvL5tgbdNeMuyLNFmLcLRp0chU=;
        b=T4IgLMr3fTYcjzPWgoRe4W+j/RjfvjHdkJAQ5dhmKfE2dse7EI5xyv+/aFWyMve/vn
         zk7xgabPh4l/PgjetI/ssVCZt2t09d1D8Ppr4figJgAwK69AQZlMQkF3bH8sQceykp+V
         xb4F3pLZCNJrGGz+7KZrmC132I465CQ9mhyQ8dYQGIOPvYopzoHtHwqGV1mdRji/0uXy
         1A8suhu2s2EvoSUM9rc5SD8byJjjpfNmgjf06BQ8K6dpjXbk0SjsQXgK1PatJM/hVxM3
         ZePHzOHfpzXnx+Su6Yzl4brIBbCiHI77EQrvDOwDM9jlL/zEkfhN24KwjQnWa9nLgNyW
         Ea3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F54uB3+4nMYSuGW06DvL5tgbdNeMuyLNFmLcLRp0chU=;
        b=bv0n+wSU1WVdSFS8/t7pJvsBHp9di9BXVe7EQfQMmPA03CAXjRhqfR2QagFoxTTzWI
         a6uwA9H6UWbETtGrQkvzmEagxah35G3AFciQah32Ev+CN/tVlN9jx/cxFK30FWVouRUY
         w4vaWRygxCTD6UjTbJpNeW9Dw6DV61pCV85NNHJ/v9sFj3S11/qjiHnkkZFpPwTK87uT
         AXVClFzigLOSmkFAtGqQI3w4UuPHzBMZZLGJHWwIqBRiKwSyrEoGCe4ne/wm2I5qMJi0
         G6VP2bricVDg+fcYxb6FXyvHSd/298sYQIhEhY4MVI4WjLrtRtlfr7dGnsiL9v3w9uhv
         JUZA==
X-Gm-Message-State: AOAM530qwHDb/Um9yEuccExewSOLLljsjkbCCxUcyzlHFN7bNpyrvzuG
	rcO3/suoZD/kHKiInu0Bfqk=
X-Google-Smtp-Source: ABdhPJz0mueQksuMclvJLHdCZQ6QzO9QJ83n7/L9nzGYOJwovh+kCdHnENoolsXLtApJGBnAuh7vmw==
X-Received: by 2002:a25:c750:: with SMTP id w77mr19894354ybe.508.1600184891582;
        Tue, 15 Sep 2020 08:48:11 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:aa10:: with SMTP id s16ls1103124ybi.10.gmail; Tue, 15
 Sep 2020 08:48:11 -0700 (PDT)
X-Received: by 2002:a25:5056:: with SMTP id e83mr30457760ybb.352.1600184890980;
        Tue, 15 Sep 2020 08:48:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600184890; cv=none;
        d=google.com; s=arc-20160816;
        b=H8ej4mF3sO+6y85W3S/PdIrxr2zzkl61AAhR3ZGulGLOjMSafjGn6sWiRW2giCg9M7
         rtXYuFC3I7WNFOyFrStbP2d2yijaMCi1KupCSJ7MMMbJJ+k9/b1owmlvFyIf1/BXuibS
         5YIDXz/ll+iQII4p+1GD2WW+cbij9XrOvAo9h8rYI7ip3aOpbGo//na6Qh9csqAF4hyh
         D1IP+BReTuzOn32yWFZy0nnAatdJwKAxPwHHV8z10az+s8ILjtDws26vvwhjKqa3I6UG
         u0K5tmJ2Sb/T7ikD3B+BEH4q1/RJahaXs+kEGhfdFC5C4hGphs2Fs5IA0IcRFmqpxBEC
         b8iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=jtPuMyFLqNYxSalBBSBkvCc2uQoE2YZgaf6m96gJsIA=;
        b=Ix3lAxf8TBgQT6EmacLIeWVGyOaPIHjm1hkWQSnwDwdTVymcXTyGOx8F1RvIdLrZL/
         qAsV22vn3cKMoqVbfhvDn/a4cP+Toivj2kUT5Dm3oHveaIsHMLmaCwXAg3bWlGHCEmwJ
         TsZdgTncBrw60v0462TFBhltbPeEbHVxz7EXnmyjkSYIXv0KHxH6XloRLrHZo1r4p8Ng
         xiKFh8zvV/2Cfql//rZnvHBTng11WCHbh/i4TG+AF5xd1eh3zKhEJu8rJ6ppkF+MdbRb
         EYabjjBjsRL74hTHed+qHjYXHqXSpmGqjs+ZKrRfvR5eJ4hrlJ2KS/NVUbgwKZl81sxn
         T8xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qBkSaaGG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id s69si311091ybc.4.2020.09.15.08.48.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Sep 2020 08:48:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08FFm4P5007907;
	Tue, 15 Sep 2020 10:48:04 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08FFm47i037284
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 15 Sep 2020 10:48:04 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 15
 Sep 2020 10:48:04 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 15 Sep 2020 10:48:04 -0500
Received: from [10.250.232.147] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08FFlv31034789;
	Tue, 15 Sep 2020 10:47:58 -0500
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
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <181ae83d-edeb-9406-27cc-1195fe29ae95@ti.com>
Date: Tue, 15 Sep 2020 21:17:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5733dbfc-76c1-45dc-6dce-ef5449eacc73@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=qBkSaaGG;       spf=pass
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

Hi Jason,

On 15/09/20 1:48 pm, Jason Wang wrote:
> Hi Kishon:
>=20
> On 2020/9/14 =E4=B8=8B=E5=8D=883:23, Kishon Vijay Abraham I wrote:
>>> Then you need something that is functional equivalent to virtio PCI
>>> which is actually the concept of vDPA (e.g vDPA provides alternatives i=
f
>>> the queue_sel is hard in the EP implementation).
>> Okay, I just tried to compare the 'struct vdpa_config_ops' and 'struct
>> vhost_config_ops' ( introduced in [RFC PATCH 03/22] vhost: Add ops for
>> the VHOST driver to configure VHOST device).
>>
>> struct vdpa_config_ops {
>> =C2=A0=C2=A0=C2=A0=C2=A0/* Virtqueue ops */
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_address)(struct vdpa_device *vdev,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u16 idx, u64 desc_area, u64 driver_area,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u64 device_area);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_num)(struct vdpa_device *vdev, u16=
 idx, u32 num);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*kick_vq)(struct vdpa_device *vdev, u16 id=
x);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_cb)(struct vdpa_device *vdev, u16 =
idx,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 struct vdpa_callback *cb);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*set_vq_ready)(struct vdpa_device *vdev, u=
16 idx, bool ready);
>> =C2=A0=C2=A0=C2=A0=C2=A0bool (*get_vq_ready)(struct vdpa_device *vdev, u=
16 idx);
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*set_vq_state)(struct vdpa_device *vdev, u1=
6 idx,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 const struct vdpa_vq_state *state);
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_state)(struct vdpa_device *vdev, u1=
6 idx,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 struct vdpa_vq_state *state);
>> =C2=A0=C2=A0=C2=A0=C2=A0struct vdpa_notification_area
>> =C2=A0=C2=A0=C2=A0=C2=A0(*get_vq_notification)(struct vdpa_device *vdev,=
 u16 idx);
>> =C2=A0=C2=A0=C2=A0=C2=A0/* vq irq is not expected to be changed once DRI=
VER_OK is set */
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*get_vq_irq)(struct vdpa_device *vdv, u16 i=
dx);
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0/* Device ops */
>> =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vq_align)(struct vdpa_device *vdev);
>> =C2=A0=C2=A0=C2=A0=C2=A0u64 (*get_features)(struct vdpa_device *vdev);
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*set_features)(struct vdpa_device *vdev, u6=
4 features);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*set_config_cb)(struct vdpa_device *vdev,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct vdpa_callback *cb);
>> =C2=A0=C2=A0=C2=A0=C2=A0u16 (*get_vq_num_max)(struct vdpa_device *vdev);
>> =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_device_id)(struct vdpa_device *vdev);
>> =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_vendor_id)(struct vdpa_device *vdev);
>> =C2=A0=C2=A0=C2=A0=C2=A0u8 (*get_status)(struct vdpa_device *vdev);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*set_status)(struct vdpa_device *vdev, u8 =
status);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*get_config)(struct vdpa_device *vdev, uns=
igned int offset,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 void *buf, unsigned int len);
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*set_config)(struct vdpa_device *vdev, uns=
igned int offset,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 const void *buf, unsigned int len);
>> =C2=A0=C2=A0=C2=A0=C2=A0u32 (*get_generation)(struct vdpa_device *vdev);
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0/* DMA ops */
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*set_map)(struct vdpa_device *vdev, struct =
vhost_iotlb *iotlb);
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*dma_map)(struct vdpa_device *vdev, u64 iov=
a, u64 size,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 u64 pa, u32 perm);
>> =C2=A0=C2=A0=C2=A0=C2=A0int (*dma_unmap)(struct vdpa_device *vdev, u64 i=
ova, u64 size);
>>
>> =C2=A0=C2=A0=C2=A0=C2=A0/* Free device resources */
>> =C2=A0=C2=A0=C2=A0=C2=A0void (*free)(struct vdpa_device *vdev);
>> };
>>
>> +struct vhost_config_ops {
>> +=C2=A0=C2=A0=C2=A0 int (*create_vqs)(struct vhost_dev *vdev, unsigned i=
nt nvqs,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 unsigned int num_bufs, struct vhost_virtqueue *vqs[],
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 vhost_vq_callback_t *callbacks[],
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 const char * const names[]);
>> +=C2=A0=C2=A0=C2=A0 void (*del_vqs)(struct vhost_dev *vdev);
>> +=C2=A0=C2=A0=C2=A0 int (*write)(struct vhost_dev *vdev, u64 vhost_dst, =
void *src,
>> int len);
>> +=C2=A0=C2=A0=C2=A0 int (*read)(struct vhost_dev *vdev, void *dst, u64 v=
host_src, int
>> len);
>> +=C2=A0=C2=A0=C2=A0 int (*set_features)(struct vhost_dev *vdev, u64 devi=
ce_features);
>> +=C2=A0=C2=A0=C2=A0 int (*set_status)(struct vhost_dev *vdev, u8 status)=
;
>> +=C2=A0=C2=A0=C2=A0 u8 (*get_status)(struct vhost_dev *vdev);
>> +};
>> +
>> struct virtio_config_ops
>> I think there's some overlap here and some of the ops tries to do the
>> same thing.
>>
>> I think it differs in (*set_vq_address)() and (*create_vqs)().
>> [create_vqs() introduced in struct vhost_config_ops provides
>> complimentary functionality to (*find_vqs)() in struct
>> virtio_config_ops. It seemingly encapsulates the functionality of
>> (*set_vq_address)(), (*set_vq_num)(), (*set_vq_cb)(),..].
>>
>> Back to the difference between (*set_vq_address)() and (*create_vqs)(),
>> set_vq_address() directly provides the virtqueue address to the vdpa
>> device but create_vqs() only provides the parameters of the virtqueue
>> (like the number of virtqueues, number of buffers) but does not directly
>> provide the address. IMO the backend client drivers (like net or vhost)
>> shouldn't/cannot by itself know how to access the vring created on
>> virtio front-end. The vdpa device/vhost device should have logic for
>> that. That will help the client drivers to work with different types of
>> vdpa device/vhost device and can access the vring created by virtio
>> irrespective of whether the vring can be accessed via mmio or kernel
>> space or user space.
>>
>> I think vdpa always works with client drivers in userspace and providing
>> userspace address for vring.
>=20
>=20
> Sorry for being unclear. What I meant is not replacing vDPA with the
> vhost(bus) you proposed but the possibility of replacing virtio-pci-epf
> with vDPA in:

Okay, so the virtio back-end still use vhost and front end should use
vDPA. I see. So the host side PCI driver for EPF should populate
vdpa_config_ops and invoke vdpa_register_device().
>=20
> My question is basically for the part of virtio_pci_epf_send_command(),
> so it looks to me you have a vendor specific API to replace the
> virtio-pci layout of the BAR:

Even when we use vDPA, we have to use some sort of
virtio_pci_epf_send_command() to communicate with virtio backend right?

Right, the layout is slightly different from the standard layout.

This is the layout
struct epf_vhost_reg_queue {
        u8 cmd;
        u8 cmd_status;
        u16 status;
        u16 num_buffers;
        u16 msix_vector;
        u64 queue_addr;
} __packed;

struct epf_vhost_reg {
        u64 host_features;
        u64 guest_features;
        u16 msix_config;
        u16 num_queues;
        u8 device_status;
        u8 config_generation;
        u32 isr;
        u8 cmd;
        u8 cmd_status;
        struct epf_vhost_reg_queue vq[MAX_VQS];
} __packed;
>=20
>=20
> +static int virtio_pci_epf_send_command(struct virtio_pci_device *vp_dev,
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 command)
> +{
> +=C2=A0=C2=A0=C2=A0 struct virtio_pci_epf *pci_epf;
> +=C2=A0=C2=A0=C2=A0 void __iomem *ioaddr;
> +=C2=A0=C2=A0=C2=A0 ktime_t timeout;
> +=C2=A0=C2=A0=C2=A0 bool timedout;
> +=C2=A0=C2=A0=C2=A0 int ret =3D 0;
> +=C2=A0=C2=A0=C2=A0 u8 status;
> +
> +=C2=A0=C2=A0=C2=A0 pci_epf =3D to_virtio_pci_epf(vp_dev);
> +=C2=A0=C2=A0=C2=A0 ioaddr =3D vp_dev->ioaddr;
> +
> +=C2=A0=C2=A0=C2=A0 mutex_lock(&pci_epf->lock);
> +=C2=A0=C2=A0=C2=A0 writeb(command, ioaddr + HOST_CMD);
> +=C2=A0=C2=A0=C2=A0 timeout =3D ktime_add_ms(ktime_get(), COMMAND_TIMEOUT=
);
> +=C2=A0=C2=A0=C2=A0 while (1) {
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 timedout =3D ktime_after(ktime_get=
(), timeout);
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 status =3D readb(ioaddr + HOST_CMD=
_STATUS);
> +
>=20
> Several questions:
>=20
> - It's not clear to me how the synchronization is done between the RC
> and EP. E.g how and when the value of HOST_CMD_STATUS can be changed.

The HOST_CMD (commands sent to the EP) is serialized by using mutex.
Once the EP reads the command, it resets the value in HOST_CMD. So
HOST_CMD is less likely an issue.

A sufficiently large time is given for the EP to complete it's operation
(1 Sec) where the EP provides the status in HOST_CMD_STATUS. After it
expires, HOST_CMD_STATUS_NONE is written to HOST_CMD_STATUS. There could
be case where EP updates HOST_CMD_STATUS after RC writes
HOST_CMD_STATUS_NONE, but by then HOST has already detected this as
failure and error-ed out.
=C2=A0
> If you still want to introduce a new transport, a virtio spec patch
> would be helpful for us to understand the device API.

Okay, that should be on https://github.com/oasis-tcs/virtio-spec.git?
> - You have you vendor specific layout (according to
> virtio_pci_epb_table()), so I guess you it's better to have a vendor
> specific vDPA driver instead

Okay, with vDPA, we are free to define our own layouts.
> - The advantage of vendor specific vDPA driver is that it can 1) have
> less codes 2) support userspace drivers through vhost-vDPA (instead of
> inventing new APIs since we can't use vfio-pci here).

I see there's an additional level of indirection from virtio to vDPA and
probably no need for spec update but don't exactly see how it'll reduce
code.

For 2, Isn't vhost-vdpa supposed to run on virtio backend?

From a high level, I think I should be able to use vDPA for
virtio_pci_epf.c. Would you also suggest using vDPA for ntb_virtio.c?
([RFC PATCH 20/22] NTB: Add a new NTB client driver to implement VIRTIO
functionality).

Thanks
Kishon

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/181ae83d-edeb-9406-27cc-1195fe29ae95%40ti.com.
