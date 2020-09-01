Return-Path: <linux-ntb+bncBDOJZOXA5ABBBXUWXD5AKGQED6DJ7BY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFE0258AAF
	for <lists+linux-ntb@lfdr.de>; Tue,  1 Sep 2020 10:50:39 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id q131sf314848qke.22
        for <lists+linux-ntb@lfdr.de>; Tue, 01 Sep 2020 01:50:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598950238; cv=pass;
        d=google.com; s=arc-20160816;
        b=erha1v7xi4+aPWsB4WhPgDJsKAM2aCSiy62g0vfU0ZgU2xEC8h/YtkxzCvqZXLHvaZ
         UO2qwKiWuH9dJkeg83UXA+pRzUB9Ri/suhGDMbmdTFm9mvX8LXe0L2ArvXqvgC2ThB6D
         H8eTAa2V4glmr+nlZqLknW7kpoKu3qFPP+sJfrEVvQ5QosJMTu9ifx6B7jh/66TNEXEA
         OTeMY9ijSWCwLWhEDYB8w0lBJmEpUfAKP99llspgajOIYCMWwoMwrVt0d0qAOCIW33te
         tfo3Qf2rYnqUpqOQHGIvdqfKwJEX/hzL7NowgCuMJLbaaVo904XurT9CqPRZoxSCgXHM
         xDKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=2Z09mg+jJI3DQrwqYtpgpimEnfa5iDF2fB07qptFNgk=;
        b=ITP9gWzenrd8itkY6k+9ch2/MeKKE4LA0KkCaT9HgI2S2lmbEdq9mq7hBlnPNAEhUV
         8F7a8eDS3nrZKXLhRD1Ay3kSmAug+jmaZlu0Ybp5n09DC27kkcfONauH5wfpGATzem4/
         AqeP2yVxkOvYw4wMLFqlw8sGer39hZv5psPuGhemFJ2LKXv5sdk1HGxn/ON1J8trjIgr
         wVzr0qmOELT/MtrNEY5DMCbsu7XnJbzUJJHLLd4pbfuY5vUjj7M2YfPPjoX7uC//Ytch
         +iEujrGaywjKmNdYtGbVPLjcwAOt3X1MKUwjZWYT2nmN4wELhWHuCG0JYa9ilkticFUj
         iV8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N48cEfas;
       spf=pass (google.com: domain of jasowang@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Z09mg+jJI3DQrwqYtpgpimEnfa5iDF2fB07qptFNgk=;
        b=oD4wF7+1Wi2S458d76r8nWr/ckqJjpxGhaM8kq9m4sveBY98s63PS1iQXc9PC0c5zg
         x0cN+rb3X0EAhWWYxNRNJ8wE/sdPqe8OOw6zNnk19zCgHfZgFF2jb6Q71UZCwmJAIZs1
         TYxmLN+YSvwxVjqFsvtIBmVR13Kq0FjdpYqbG72TcZZVjtJHFXepa/y0eymOF+l/zX7g
         GPsOv7ICN0gjPELxK5/EyfYwBBRVQdciglUz3ESyVIyjqTY/BXwsgLzlLY29vSGZwMFz
         QpYGXAhWSvyv7wWXS/27ZDXAfC/aWdFaxajWeoqzK0IWagWg1CqVDTMlBrM6dyKziXxy
         EaSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Z09mg+jJI3DQrwqYtpgpimEnfa5iDF2fB07qptFNgk=;
        b=eT8iWFOr3Kfq5GSehwjV+RioI459cWOI6NlYKKI8XbUOoSqaYJuDKaEh5xU11FGP+R
         hftdMjfjA3/wVeSSRrTvNfoT4/JjEy8fS9sPEeZ1djW41pDHjVUEisXQ7chUAz2QueX+
         yejQ2EFlbxz4NmoeKGyj+JKwA5MlTGKEpVZlHZrWiPHPW/kuCirHsUYNvQo7CfwL0Ebw
         H/QFtU3OHmBy3WbccDgiCm0nU0RVn7yNOGtur2SRvIwJNNA0X6UUIMHT9z3diLzHJ5Fl
         odXH27AsBBDLjASmbAhTMoM8TgrxqYkbk1YDNAMcQ/ZF6hZzmNN7+2wQiyPLZg2ldP5i
         iUxA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532l58kJAOl7FIbkSFwlCZ2z/OSrQYc202TJy0dC5NhcbKjroYXI
	AL70Aw+qKwy8THrhAnWmK2w=
X-Google-Smtp-Source: ABdhPJzq6LDPL8+HdCO0VCvt+hMkW81SEoxYIuilNvyNTzwf6nNpWekw22JedWybKxpqb4axViBs2g==
X-Received: by 2002:a0c:e085:: with SMTP id l5mr893780qvk.178.1598950238099;
        Tue, 01 Sep 2020 01:50:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:346:: with SMTP id t6ls246962qkm.1.gmail; Tue, 01
 Sep 2020 01:50:37 -0700 (PDT)
X-Received: by 2002:a05:620a:21da:: with SMTP id h26mr809181qka.482.1598950237705;
        Tue, 01 Sep 2020 01:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598950237; cv=none;
        d=google.com; s=arc-20160816;
        b=td6DpG0itmETQSM0aqDMUEK1DE59vL9JTIga2Ew3T3aTdIoxYFUiw8GP6GTueo91mp
         d6tj8GYfvv0UIWEAYNluHZhuX63pvPAi65VyZj0+6Px7XbhIKfmSz5hxr7Ea0dElTpbo
         mINPA1lkV8xX8ay1wE3Otqr/f+dqS/2Y0bY/+tfzage0KbAfPgI7UzZoy2ERO3SwgpyY
         M8IPch40fD1miRiubvgr4Nv6qq6xJX7odcWfoOFyVuIHOmoBJYShMG+5KMLce9Z33yaj
         mF1xqUegnM4q7QlQMYCIOV4WXVPQmzoGUsH+co0WyD4afQbDMSBYKW6DuaRgV35vUkwV
         Rwpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=SVwS/DaWmpJpwWffyjIqRWr5IpfRP8LAnZK9XxzYBVQ=;
        b=b9C92ZnxeMxKPd5f38/t1vAqXI/mqG33+JeoUt7CjtU0uUc90eZ+UkZpUCWgHJV/AM
         keZ3JOOvM61fOoT9FF8Cvy4VgmgTPayQPHVgFwpanagwj6WztZlUqPgC4ANr5PSQR6mU
         dAYPCSaeUpZ+0AVFgHACc/UH99dknwa0uMbA1mPN1QmDo9DXl5VQinOniLSqHJsX2w/C
         kp5CvvUcJtvfYHRzyzR+vzfNkjtXJYqPIdnEEQcXVgyA0Q6ULRhhU3skYm9Pk9cXE8fz
         Rz67ht2kOsDmLinhW51bz4hCB11wCKL9jZWhIfyf+zGBc6onPql5Wir3fKDLUJX50gQa
         M16g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=N48cEfas;
       spf=pass (google.com: domain of jasowang@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id n26si38580qkg.5.2020.09.01.01.50.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2020 01:50:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of jasowang@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-39-vU_Z3x5GPcaM20rebD64nw-1; Tue, 01 Sep 2020 04:50:22 -0400
X-MC-Unique: vU_Z3x5GPcaM20rebD64nw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C1D02425E3;
	Tue,  1 Sep 2020 08:50:19 +0000 (UTC)
Received: from [10.72.13.164] (ovpn-13-164.pek2.redhat.com [10.72.13.164])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A5E877DA44;
	Tue,  1 Sep 2020 08:50:04 +0000 (UTC)
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: Kishon Vijay Abraham I <kishon@ti.com>, Cornelia Huck <cohuck@redhat.com>
Cc: "Michael S. Tsirkin" <mst@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Stefano Garzarella <sgarzare@redhat.com>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-ntb@googlegroups.com, linux-pci@vger.kernel.org, kvm@vger.kernel.org,
 virtualization@lists.linux-foundation.org, netdev@vger.kernel.org
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
From: Jason Wang <jasowang@redhat.com>
Message-ID: <9cd58cd1-0041-3d98-baf7-6e5bc2e7e317@redhat.com>
Date: Tue, 1 Sep 2020 16:50:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <ac8f7e4f-9f46-919a-f5c2-89b07794f0ab@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Original-Sender: jasowang@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=N48cEfas;
       spf=pass (google.com: domain of jasowang@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


On 2020/9/1 =E4=B8=8B=E5=8D=881:24, Kishon Vijay Abraham I wrote:
> Hi,
>
> On 28/08/20 4:04 pm, Cornelia Huck wrote:
>> On Thu, 9 Jul 2020 14:26:53 +0800
>> Jason Wang <jasowang@redhat.com> wrote:
>>
>> [Let me note right at the beginning that I first noted this while
>> listening to Kishon's talk at LPC on Wednesday. I might be very
>> confused about the background here, so let me apologize beforehand for
>> any confusion I might spread.]
>>
>>> On 2020/7/8 =E4=B8=8B=E5=8D=889:13, Kishon Vijay Abraham I wrote:
>>>> Hi Jason,
>>>>
>>>> On 7/8/2020 4:52 PM, Jason Wang wrote:
>>>>> On 2020/7/7 =E4=B8=8B=E5=8D=8810:45, Kishon Vijay Abraham I wrote:
>>>>>> Hi Jason,
>>>>>>
>>>>>> On 7/7/2020 3:17 PM, Jason Wang wrote:
>>>>>>> On 2020/7/6 =E4=B8=8B=E5=8D=885:32, Kishon Vijay Abraham I wrote:
>>>>>>>> Hi Jason,
>>>>>>>>
>>>>>>>> On 7/3/2020 12:46 PM, Jason Wang wrote:
>>>>>>>>> On 2020/7/2 =E4=B8=8B=E5=8D=889:35, Kishon Vijay Abraham I wrote:
>>>>>>>>>> Hi Jason,
>>>>>>>>>>
>>>>>>>>>> On 7/2/2020 3:40 PM, Jason Wang wrote:
>>>>>>>>>>> On 2020/7/2 =E4=B8=8B=E5=8D=885:51, Michael S. Tsirkin wrote:
>>>>>>>>>>>> On Thu, Jul 02, 2020 at 01:51:21PM +0530, Kishon Vijay=20
>>>>>>>>>>>> Abraham I wrote:
>>>>>>>>>>>>> This series enhances Linux Vhost support to enable SoC-to-SoC
>>>>>>>>>>>>> communication over MMIO. This series enables rpmsg=20
>>>>>>>>>>>>> communication between
>>>>>>>>>>>>> two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2
>>>>>>>>>>>>>
>>>>>>>>>>>>> 1) Modify vhost to use standard Linux driver model
>>>>>>>>>>>>> 2) Add support in vring to access virtqueue over MMIO
>>>>>>>>>>>>> 3) Add vhost client driver for rpmsg
>>>>>>>>>>>>> 4) Add PCIe RC driver (uses virtio) and PCIe EP driver=20
>>>>>>>>>>>>> (uses vhost) for
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rpmsg communicati=
on between two SoCs connected to=20
>>>>>>>>>>>>> each other
>>>>>>>>>>>>> 5) Add NTB Virtio driver and NTB Vhost driver for rpmsg=20
>>>>>>>>>>>>> communication
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 between two SoCs =
connected via NTB
>>>>>>>>>>>>> 6) Add configfs to configure the components
>>>>>>>>>>>>>
>>>>>>>>>>>>> UseCase1 :
>>>>>>>>>>>>>
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0 VHOST RPMSG VIRTIO RPMSG
>>>>>>>>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> +-----v------+ +------v-------+
>>>>>>>>>>>>> |=C2=A0=C2=A0 Linux=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 | Linux=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 Endpoint=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | Root Complex=
 |
>>>>>>>>>>>>> | <----------------->=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0 SOC1=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | SOC2=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> +------------+ +--------------+
>>>>>>>>>>>>>
>>>>>>>>>>>>> UseCase 2:
>>>>>>>>>>>>>
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 VHOST=
 RPMSG VIRTIO RPMSG
>>>>>>>>>>>>> + +
>>>>>>>>>>>>> | |
>>>>>>>>>>>>> | |
>>>>>>>>>>>>> | |
>>>>>>>>>>>>> | |
>>>>>>>>>>>>> +------v------+ +------v------+
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | | |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=
=A0 HOST1 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=20
>>>>>>>>>>>>> HOST2=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | | |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> +------^------+ +------^------+
>>>>>>>>>>>>> | |
>>>>>>>>>>>>> | |
>>>>>>>>>>>>> +------------------------------------------------------------=
---------+=20
>>>>>>>>>>>>>
>>>>>>>>>>>>> | +------v------+ +------v------+=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 | | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 EP |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | EP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
>>>>>>>>>>>>> |=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 | CONTROLLER1 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=20
>>>>>>>>>>>>> CONTROLLER2 |=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 | <-----------------------------------> |=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 | | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 | | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 SoC With Multiple EP Instances=C2=A0=C2=A0=20
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 |
>>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 (Configured using NTB Function)=C2=A0=20
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 |
>>>>>>>>>>>>> | +-------------+ +-------------+=C2=A0 |
>>>>>>>>>>>>> +------------------------------------------------------------=
---------+=20
>>>>>>>>>>>>>
>>
>> First of all, to clarify the terminology:
>> Is "vhost rpmsg" acting as what the virtio standard calls the 'device',
>> and "virtio rpmsg" as the 'driver'? Or is the "vhost" part mostly just
>
> Right, vhost_rpmsg is 'device' and virtio_rpmsg is 'driver'.
>> virtqueues + the exiting vhost interfaces?
>
> It's implemented to provide the full 'device' functionality.
>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> Software Layering:
>>>>>>>>>>>>>
>>>>>>>>>>>>> The high-level SW layering should look something like=20
>>>>>>>>>>>>> below. This series
>>>>>>>>>>>>> adds support only for RPMSG VHOST, however something=20
>>>>>>>>>>>>> similar should be
>>>>>>>>>>>>> done for net and scsi. With that any vhost device (PCI,=20
>>>>>>>>>>>>> NTB, Platform
>>>>>>>>>>>>> device, user) can use any of the vhost client driver.
>>>>>>>>>>>>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +----------=
------+ +-----------+=C2=A0 +------------+=20
>>>>>>>>>>>>> +----------+
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 RPM=
SG VHOST=C2=A0=C2=A0 |=C2=A0 | NET VHOST |=C2=A0 | SCSI VHOST=20
>>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0 X=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +-------^--=
------+ +-----^-----+=C2=A0 +-----^------+=20
>>>>>>>>>>>>> +----^-----+
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> +-----------v-----------------v--------------v--------------v=
----------+=20
>>>>>>>>>>>>>
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 VHOST=20
>>>>>>>>>>>>> CORE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> +--------^---------------^--------------------^--------------=
----^-----+=20
>>>>>>>>>>>>>
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> +--------v-------+=C2=A0 +----v------+ +----------v----------=
+=C2=A0=20
>>>>>>>>>>>>> +----v-----+
>>>>>>>>>>>>> |=C2=A0 PCI EPF VHOST |=C2=A0 | NTB VHOST | |PLATFORM DEVICE =
VHOST|=C2=A0=20
>>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0 X=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>> +----------------+=C2=A0 +-----------+ +---------------------=
+=C2=A0=20
>>>>>>>>>>>>> +----------+
>>
>> So, the upper half is basically various functionality types, e.g. a net
>> device. What is the lower half, a hardware interface? Would it be
>> equivalent to e.g. a normal PCI device?
>
> Right, the upper half should provide the functionality.
> The bottom layer could be a HW interface (like PCIe device or NTB=20
> device) or it could be a SW interface (for accessing virtio ring in=20
> userspace) that could be used by Hypervisor.
>
> The top half should be transparent to what type of device is actually=20
> using it.
>
>>
>>>>>>>>>>>>>
>>>>>>>>>>>>> This was initially proposed here [1]
>>>>>>>>>>>>>
>>>>>>>>>>>>> [1] ->
>>>>>>>>>>>>> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b639=
0@ti.com=20
>>>>>>>>>>>>>
>>>>>>>>>>>> I find this very interesting. A huge patchset so will take=20
>>>>>>>>>>>> a bit
>>>>>>>>>>>> to review, but I certainly plan to do that. Thanks!
>>>>>>>>>>> Yes, it would be better if there's a git branch for us to=20
>>>>>>>>>>> have a look.
>>>>>>>>>> I've pushed the branch
>>>>>>>>>> https://github.com/kishon/linux-wip.git vhost_rpmsg_pci_ntb_rfc
>>>>>>>>> Thanks
>>>>>>>>>
>>>>>>>>>>> Btw, I'm not sure I get the big picture, but I vaguely feel=20
>>>>>>>>>>> some of the
>>>>>>>>>>> work is
>>>>>>>>>>> duplicated with vDPA (e.g the epf transport or vhost bus).
>>>>>>>>>> This is about connecting two different HW systems both=20
>>>>>>>>>> running Linux and
>>>>>>>>>> doesn't necessarily involve virtualization.
>>>>>>>>> Right, this is something similar to VOP
>>>>>>>>> (Documentation/misc-devices/mic/mic_overview.rst). The=20
>>>>>>>>> different is the
>>>>>>>>> hardware I guess and VOP use userspace application to=20
>>>>>>>>> implement the device.
>>>>>>>> I'd also like to point out, this series tries to have=20
>>>>>>>> communication between
>>>>>>>> two
>>>>>>>> SoCs in vendor agnostic way. Since this series solves for 2=20
>>>>>>>> usecases (PCIe
>>>>>>>> RC<->EP and NTB), for the NTB case it directly plugs into NTB=20
>>>>>>>> framework and
>>>>>>>> any
>>>>>>>> of the HW in NTB below should be able to use a virtio-vhost=20
>>>>>>>> communication
>>>>>>>>
>>>>>>>> #ls drivers/ntb/hw/
>>>>>>>> amd=C2=A0 epf=C2=A0 idt=C2=A0 intel=C2=A0 mscc
>>>>>>>>
>>>>>>>> And similarly for the PCIe RC<->EP communication, this adds a=20
>>>>>>>> generic endpoint
>>>>>>>> function driver and hence any SoC that supports configurable=20
>>>>>>>> PCIe endpoint can
>>>>>>>> use virtio-vhost communication
>>>>>>>>
>>>>>>>> # ls drivers/pci/controller/dwc/*ep*
>>>>>>>> drivers/pci/controller/dwc/pcie-designware-ep.c
>>>>>>>> drivers/pci/controller/dwc/pcie-uniphier-ep.c
>>>>>>>> drivers/pci/controller/dwc/pci-layerscape-ep.c
>>>>>>> Thanks for those backgrounds.
>>>>>>>
>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0 So there is no guest or host as in
>>>>>>>>>> virtualization but two entirely different systems connected=20
>>>>>>>>>> via PCIe cable,
>>>>>>>>>> one
>>>>>>>>>> acting as guest and one as host. So one system will provide=20
>>>>>>>>>> virtio
>>>>>>>>>> functionality reserving memory for virtqueues and the other=20
>>>>>>>>>> provides vhost
>>>>>>>>>> functionality providing a way to access the virtqueues in=20
>>>>>>>>>> virtio memory.
>>>>>>>>>> One is
>>>>>>>>>> source and the other is sink and there is no intermediate=20
>>>>>>>>>> entity. (vhost was
>>>>>>>>>> probably intermediate entity in virtualization?)
>>>>>>>>> (Not a native English speaker) but "vhost" could introduce=20
>>>>>>>>> some confusion for
>>>>>>>>> me since it was use for implementing virtio backend for=20
>>>>>>>>> userspace drivers. I
>>>>>>>>> guess "vringh" could be better.
>>>>>>>> Initially I had named this vringh but later decided to choose=20
>>>>>>>> vhost instead of
>>>>>>>> vringh. vhost is still a virtio backend (not necessarily=20
>>>>>>>> userspace) though it
>>>>>>>> now resides in an entirely different system. Whatever virtio is=20
>>>>>>>> for a frontend
>>>>>>>> system, vhost can be that for a backend system. vring can be=20
>>>>>>>> for accessing
>>>>>>>> virtqueue and can be used either in frontend or backend.
>>
>> I guess that clears up at least some of my questions from above...
>>
>>>>>>> Ok.
>>>>>>>
>>>>>>>>>>> Have you considered to implement these through vDPA?
>>>>>>>>>> IIUC vDPA only provides an interface to userspace and an=20
>>>>>>>>>> in-kernel rpmsg
>>>>>>>>>> driver
>>>>>>>>>> or vhost net driver is not provided.
>>>>>>>>>>
>>>>>>>>>> The HW connection looks something like=20
>>>>>>>>>> https://pasteboard.co/JfMVVHC.jpg
>>>>>>>>>> (usecase2 above),
>>>>>>>>> I see.
>>>>>>>>>
>>>>>>>>>> =C2=A0 =C2=A0=C2=A0=C2=A0 all the boards run Linux. The middle b=
oard provides NTB
>>>>>>>>>> functionality and board on either side provides virtio/vhost
>>>>>>>>>> functionality and
>>>>>>>>>> transfer data using rpmsg.
>>
>> This setup looks really interesting (sometimes, it's really hard to
>> imagine this in the abstract.)
>>>>>>>>> So I wonder whether it's worthwhile for a new bus. Can we use
>>>>>>>>> the existed virtio-bus/drivers? It might work as, except for
>>>>>>>>> the epf transport, we can introduce a epf "vhost" transport
>>>>>>>>> driver.
>>>>>>>> IMHO we'll need two buses one for frontend and other for
>>>>>>>> backend because the two components can then co-operate/interact
>>>>>>>> with each other to provide a functionality. Though both will
>>>>>>>> seemingly provide similar callbacks, they are both provide
>>>>>>>> symmetrical or complimentary funcitonality and need not be same
>>>>>>>> or identical.
>>>>>>>>
>>>>>>>> Having the same bus can also create sequencing issues.
>>>>>>>>
>>>>>>>> If you look at virtio_dev_probe() of virtio_bus
>>>>>>>>
>>>>>>>> device_features =3D dev->config->get_features(dev);
>>>>>>>>
>>>>>>>> Now if we use same bus for both front-end and back-end, both
>>>>>>>> will try to get_features when there has been no set_features.
>>>>>>>> Ideally vhost device should be initialized first with the set
>>>>>>>> of features it supports. Vhost and virtio should use "status"
>>>>>>>> and "features" complimentarily and not identically.
>>>>>>> Yes, but there's no need for doing status/features passthrough
>>>>>>> in epf vhost drivers.b
>>>>>>>
>>>>>>>> virtio device (or frontend) cannot be initialized before vhost
>>>>>>>> device (or backend) gets initialized with data such as
>>>>>>>> features. Similarly vhost (backend)
>>>>>>>> cannot access virqueues or buffers before virtio (frontend) sets
>>>>>>>> VIRTIO_CONFIG_S_DRIVER_OK whereas that requirement is not there
>>>>>>>> for virtio as the physical memory for virtqueues are created by
>>>>>>>> virtio (frontend).
>>>>>>> epf vhost drivers need to implement two devices: vhost(vringh)
>>>>>>> device and virtio device (which is a mediated device). The
>>>>>>> vhost(vringh) device is doing feature negotiation with the
>>>>>>> virtio device via RC/EP or NTB. The virtio device is doing
>>>>>>> feature negotiation with local virtio drivers. If there're
>>>>>>> feature mismatch, epf vhost drivers and do mediation between
>>>>>>> them.
>>>>>> Here epf vhost should be initialized with a set of features for
>>>>>> it to negotiate either as vhost device or virtio device no? Where
>>>>>> should the initial feature set for epf vhost come from?
>>>>>
>>>>> I think it can work as:
>>>>>
>>>>> 1) Having an initial features (hard coded in the code) set X in
>>>>> epf vhost 2) Using this X for both virtio device and vhost(vringh)
>>>>> device 3) local virtio driver will negotiate with virtio device
>>>>> with feature set Y 4) remote virtio driver will negotiate with
>>>>> vringh device with feature set Z 5) mediate between feature Y and
>>>>> feature Z since both Y and Z are a subset of X
>>>>>
>>>> okay. I'm also thinking if we could have configfs for configuring
>>>> this. Anyways we could find different approaches of configuring
>>>> this.
>>>
>>>
>>> Yes, and I think some management API is needed even in the design of
>>> your "Software Layering". In that figure, rpmsg vhost need some
>>> pre-set or hard-coded features.
>>
>> When I saw the plumbers talk, my first idea was "this needs to be a new
>> transport". You have some hard-coded or pre-configured features, and
>> then features are negotiated via a transport-specific means in the
>> usual way. There's basically an extra/extended layer for this (and
>> status, and whatever).
>
> I think for PCIe root complex to PCIe endpoint communication it's=20
> still "Virtio Over PCI Bus", though existing layout cannot be used in=20
> this context (find virtio capability will fail for modern interface=20
> and loading queue status immediately after writing queue number is not=20
> possible for root complex to endpoint communication; setup_vq() in=20
> virtio_pci_legacy.c).


Then you need something that is functional equivalent to virtio PCI=20
which is actually the concept of vDPA (e.g vDPA provides alternatives if=20
the queue_sel is hard in the EP implementation).


>
> "Virtio Over NTB" should anyways be a new transport.
>>
>> Does that make any sense?
>
> yeah, in the approach I used the initial features are hard-coded in=20
> vhost-rpmsg (inherent to the rpmsg) but when we have to use adapter=20
> layer (vhost only for accessing virtio ring and use virtio drivers on=20
> both front end and backend), based on the functionality (e.g, rpmsg),=20
> the vhost should be configured with features (to be presented to the=20
> virtio) and that's why additional layer or APIs will be required.


A question here, if we go with vhost bus approach, does it mean the=20
virtio device can only be implemented in EP's userspace?

Thanks


>>
>>>
>>>
>>>>>>>>> It will have virtqueues but only used for the communication
>>>>>>>>> between itself and
>>>>>>>>> uppter virtio driver. And it will have vringh queues which
>>>>>>>>> will be probe by virtio epf transport drivers. And it needs to
>>>>>>>>> do datacopy between virtqueue and
>>>>>>>>> vringh queues.
>>>>>>>>>
>>>>>>>>> It works like:
>>>>>>>>>
>>>>>>>>> virtio drivers <- virtqueue/virtio-bus -> epf vhost drivers <-
>>>>>>>>> vringh queue/epf>
>>>>>>>>>
>>>>>>>>> The advantages is that there's no need for writing new buses
>>>>>>>>> and drivers.
>>>>>>>> I think this will work however there is an addtional copy
>>>>>>>> between vringh queue and virtqueue,
>>>>>>> I think not? E.g in use case 1), if we stick to virtio bus, we
>>>>>>> will have:
>>>>>>>
>>>>>>> virtio-rpmsg (EP) <- virtio ring(1) -> epf vhost driver (EP) <-
>>>>>>> virtio ring(2) -> virtio pci (RC) <-> virtio rpmsg (RC)
>>>>>> IIUC epf vhost driver (EP) will access virtio ring(2) using
>>>>>> vringh?
>>>>>
>>>>> Yes.
>>>>>
>>>>>> And virtio
>>>>>> ring(2) is created by virtio pci (RC).
>>>>>
>>>>> Yes.
>>>>>
>>>>>>> What epf vhost driver did is to read from virtio ring(1) about
>>>>>>> the buffer len and addr and them DMA to Linux(RC)?
>>>>>> okay, I made some optimization here where vhost-rpmsg using a
>>>>>> helper writes a buffer from rpmsg's upper layer directly to
>>>>>> remote Linux (RC) as against here were it has to be first written
>>>>>> to virtio ring (1).
>>>>>>
>>>>>> Thinking how this would look for NTB
>>>>>> virtio-rpmsg (HOST1) <- virtio ring(1) -> NTB(HOST1) <->
>>>>>> NTB(HOST2)=C2=A0 <- virtio ring(2) -> virtio-rpmsg (HOST2)
>>>>>>
>>>>>> Here the NTB(HOST1) will access the virtio ring(2) using vringh?
>>>>>
>>>>> Yes, I think so it needs to use vring to access virtio ring (1) as
>>>>> well.
>>>> NTB(HOST1) and virtio ring(1) will be in the same system. So it
>>>> doesn't have to use vring. virtio ring(1) is by the virtio device
>>>> the NTB(HOST1) creates.
>>>
>>>
>>> Right.
>>>
>>>
>>>>>> Do you also think this will work seamlessly with virtio_net.c,
>>>>>> virtio_blk.c?
>>>>>
>>>>> Yes.
>>>> okay, I haven't looked at this but the backend of virtio_blk should
>>>> access an actual storage device no?
>>>
>>>
>>> Good point, for non-peer device like storage. There's probably no
>>> need for it to be registered on the virtio bus and it might be better
>>> to behave as you proposed.
>>
>> I might be missing something; but if you expose something as a block
>> device, it should have something it can access with block reads/writes,
>> shouldn't it? Of course, that can be a variety of things.
>>
>>>
>>> Just to make sure I understand the design, how is VHOST SCSI expected
>>> to work in your proposal, does it have a device for file as a backend?
>>>
>>>
>>>>>> I'd like to get clarity on two things in the approach you
>>>>>> suggested, one is features (since epf vhost should ideally be
>>>>>> transparent to any virtio driver)
>>>>>
>>>>> We can have have an array of pre-defined features indexed by
>>>>> virtio device id in the code.
>>>>>
>>>>>> and the other is how certain inputs to virtio device such as
>>>>>> number of buffers be determined.
>>>>>
>>>>> We can start from hard coded the value like 256, or introduce some
>>>>> API for user to change the value.
>>>>>
>>>>>> Thanks again for your suggestions!
>>>>>
>>>>> You're welcome.
>>>>>
>>>>> Note that I just want to check whether or not we can reuse the
>>>>> virtio bus/driver. It's something similar to what you proposed in
>>>>> Software Layering but we just replace "vhost core" with "virtio
>>>>> bus" and move the vhost core below epf/ntb/platform transport.
>>>> Got it. My initial design was based on my understanding of your
>>>> comments [1].
>>>
>>>
>>> Yes, but that's just for a networking device. If we want something
>>> more generic, it may require more thought (bus etc).
>>
>> I believe that we indeed need something bus-like to be able to support
>> a variety of devices.
>
> I think we could still have adapter layers for different types of=20
> devices ([1]) and use existing virtio bus for both front end and back=20
> end. Using bus-like will however simplify adding support for new types=20
> of devices and adding adapters for devices will be slightly more complex.
>
> [1] -> Page 13 in=20
> https://linuxplumbersconf.org/event/7/contributions/849/attachments/642/1=
175/Virtio_for_PCIe_RC_EP_NTB.pdf
>>
>>>
>>>
>>>>
>>>> I'll try to create something based on your proposed design here.
>>>
>>>
>>> Sure, but for coding, we'd better wait for other's opinion here.
>>
>> Please tell me if my thoughts above make any sense... I have just
>> started looking at that, so I might be completely off.
>
> I think your understanding is correct! Thanks for your inputs.
>
> Thanks
> Kishon

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/9cd58cd1-0041-3d98-baf7-6e5bc2e7e317%40redhat.com.
