Return-Path: <linux-ntb+bncBDAMN6NI5EERBUMVRKGQMGQEAO4I2YA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id D73F746013E
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 20:45:23 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id q13-20020a170902edcd00b00145280d7422sf5248409plk.18
        for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 11:45:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638042322; cv=pass;
        d=google.com; s=arc-20160816;
        b=MbgWD+TUe2373XD/EY8vkPVyL2ofuDQrHTtfrFYFFA3C995gPlRhtCsdc+MawqpO07
         I6HTljjTXwsdqbYRhURbHs+Vkl5Vj/rf17CDudN84HKsPtQ2aARxaxcnqgb72nYrmpjB
         /qCMKGbLKNmBxW//gI1vDq8TVqOU22U5yHgbCcGG60Ingw0DoHTL+P400aGFi8D2lNSE
         FqAXoBnBO0v90hdyb/6PVshJrDz+Z+3Vggpod+XM81j1b+Sc/Mgn1G9bSBj3qRXJUY3w
         UQHOn/BP49hNsHgXE5i6g5Ugg5vQc7ZfUdAgbU+288eeVevrtoa0q0wRwsIAztkLPmYF
         Z3ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=t8q+dcdWVrVdbkp7fQuQeh5FR1hz+dXpKp4IuYAS3xk=;
        b=y/N+5Wb0flfM6aJGjyxzI4M9QlTbX0vmvSIprYA8lqML2rcZk+/BpqwgOW/Cjh/BEs
         0HvobC/eq+UwWNPP5yPL+/Rf2QFAcMDGWLV3hoq6iFCSX0mtSYF25AN1uCU3sQmzVD5P
         +HT2zal5J4Izf+52shdGDPyRzpoM6STTog/90NCF33IgpWerPoQzu5H7UPfR8jRsWPN4
         N8Cne+aF5yBZ/G4MwmKROR/fI42LVkLUjNxh0x4iHvXZrrhXWouDNgptW0c4VArd2FfB
         nZJCe+qkydudO5LY/tVpAZNMRQpZPYPpWFrRq1b/aTR5RKcdArnGeP+7gxQb5yGFHr18
         yZrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=YpU2GaGN;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8q+dcdWVrVdbkp7fQuQeh5FR1hz+dXpKp4IuYAS3xk=;
        b=fIlL5QJGuobCjK9r8LMBTNeksl6nKIZVsqUikav3Bbh9d87/kdPNXICkHHgwevuAH4
         iU96Py2e1eI+8eufvLzPAZu0MFTPbjd6OcFsMRdAqR576/8Zct9qs/O2KElbA+sU2Wav
         wFkYDQg9gheE3Ml/Q53Od+1EkXKiyQgWf8ylq3h/BLMbIbVh9MwAXceKPgEM4mrZMlb3
         W4sDF3dtWXVBWFNxRULLHwYJ6p5KctgDF1im/zCqPz7oxRv6yZ2Q97mAYjUHIroXpW/m
         iGhdBpPbFqlNsTVQ2FAB5Vd99GDVhkZdGL4a2hJixZS/nPgW41dUggJlZzuPZ6RiPAt0
         Sbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8q+dcdWVrVdbkp7fQuQeh5FR1hz+dXpKp4IuYAS3xk=;
        b=QHF0CbPPzhsuSclhGJKsXtHBfS/Fh8cV4PZXN9EWdvRKHlHMxSQlMaMq4och/xUWcV
         DkC5k4nNFx/JBMCO4WYjdKmGgZ+Zk1LxocoyUYFeg7G4XlvR0354Z6umEfngFY2ShIwE
         BeYVzdXsXlXPwCKL+Ic/Q2Bp5t8iEa+I/59pBaO77rKSpVRa91Yj9+As5QA2fv2pKJNj
         D/eqsFAq5HbQulzk2nTiroRFfUpLZQh4SzYGhVZalf0i6m7twdW+dt9hJwg0qX0KlwBy
         MGEKcBM5uqUSvT038c8daoNYTLfnVVpLOutQCqfjUBPVZABi6x1qaSqoqa5MEtqQr/h7
         0AYw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531fct39UgowbAi08dBxqpeW5caRbZCv6r6lbPEw5Kv6E+QkHqar
	4Ezd6+GlN1Z7I37d0dH5E4Q=
X-Google-Smtp-Source: ABdhPJxIYZmVsjCpqYhxNYm1uxUemmmKilDfHkX7jYadSdk578FxTC22OxkZQl+zKabD0toO2CS2sw==
X-Received: by 2002:a65:5a8e:: with SMTP id c14mr26792756pgt.241.1638042321995;
        Sat, 27 Nov 2021 11:45:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:1bcf:: with SMTP id oa15ls6572861pjb.0.canary-gmail;
 Sat, 27 Nov 2021 11:45:21 -0800 (PST)
X-Received: by 2002:a17:90a:4dcc:: with SMTP id r12mr25359161pjl.13.1638042321401;
        Sat, 27 Nov 2021 11:45:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638042321; cv=none;
        d=google.com; s=arc-20160816;
        b=pDY5oTg4oLv0BfAMPYGWjBwdnX7hkwTC74Pfs4+eSX8q0nnqYiwW4ExHQNxsrw7dzF
         U24QyJB5XUeLa1pv+wvq0z5pUElZEi7kwpOZKQnrV4wSpk6Ce8pjFKTEx3xT638A3gFt
         NYb5a7L8O2PvHwH+sGP8TvIID8pPhuvU4uX2AGf5GVSRzQVOUj0qDFGBVoqJXZqwWFe4
         YbwrTl+hw+jLSM4oyvwbUm3tFdGoZyEbsDRVESs3LI7u+EO0vVaTXQg3/YmZ9qTdpDG+
         PDYJT1nSUvjbylLkM8RsXbxd3YXkUSjH7cFEiqhaMZUCyPSZ34FtWrbLjVG4Rutuz8z+
         y/ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=b8WWNXMmW79pVSrPL0FWh6ZTHY3JhoVaogmqsWvu1CY=;
        b=vS8SoASCO+qwivweOczU/CO0O+Pg7k2MnfPH+mWM50qlJZPXlLREZCFFmohrO+eLR9
         KJo7Q/dEoFFAyhEEANELlgiMS4gIRf35PDPsFZHW1P3AOWsyMdEXSTBWPkVkdV0WHT3Y
         M+VK0NaAtZseKbjHX/NmdbkTy0nh2Jps/j3sTqu1SbhN5LM0XwQ3qrkjddtSlUVptjlI
         MLf6LfxNUCjSMYKg2WrUCvMx5H9WyDIF89yErpy6XXGXgoFPTJQkBJxiDX11SZzNRgvD
         GUHcYCmrjpXNCqX+qPNfE/1XQCkLDfwx96hIdo1HevL40HeSm390X2ctUaBBmZ1Ipxcd
         MF1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=YpU2GaGN;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id na11si116955pjb.2.2021.11.27.11.45.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Nov 2021 11:45:21 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson
 <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>, Jason
 Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok Raj
 <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Jon Mason <jdmason@kudzu.us>, Dave
 Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: Re: [patch 07/32] genirq/msi: Count the allocated MSI descriptors
In-Reply-To: <87o865flot.ffs@tglx>
References: <20211126230957.239391799@linutronix.de>
 <20211126232734.708730446@linutronix.de> <YaIiPISLr7VokL8P@kroah.com>
 <87o865flot.ffs@tglx>
Date: Sat, 27 Nov 2021 20:45:18 +0100
Message-ID: <87ilwdfkmp.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=YpU2GaGN;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Sat, Nov 27 2021 at 20:22, Thomas Gleixner wrote:

> On Sat, Nov 27 2021 at 13:19, Greg Kroah-Hartman wrote:
>> On Sat, Nov 27, 2021 at 02:22:38AM +0100, Thomas Gleixner wrote:
>>> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
>>
>> No changelog?
>
> Bah. This one should not be there at all.
>
>> Anyway, why do we care about the number of decriptors?

The last part of this really cares about it for the dynamic extension
part, but that's core code which looks at the counter under the lock.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87ilwdfkmp.ffs%40tglx.
