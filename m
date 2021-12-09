Return-Path: <linux-ntb+bncBDAMN6NI5EERBRUMY6GQMGQEVQWNEEY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E53C46E4C9
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 10:03:03 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id bq6-20020a056512150600b0041bf41f5437sf2379750lfb.17
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 01:03:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639040582; cv=pass;
        d=google.com; s=arc-20160816;
        b=otRSsMDsENhx1UpNJm1g9rcB81MFQ7doWRHBGLjSC/rwt7ml+f30DJZKC+VrIMBOwO
         o6Ks0heuB1g2udAeH2pAuNhb7+py31/Te/N3CeTULVPV6J41yEFI0lpDsk6GHcOK/tnv
         cMT88DW8DBX2dp5Ka76uLGDIlNtP63xKvcjtcepwj8I7tzXVekdHHQjXjELY/6N/DwW/
         g8wXBF5vh3P8ygeCHRF2KNC4OA2lG/rWfZRC2uGQgX1pryZtJr+rFnXQOhvcelPlrqIr
         dFA4ko7/0kgcXDMkqHri8IOPwF6BWFOqNPFaVnmadO/MqJ6ok7tqkRSheiuxGbj+6ENz
         kZAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=SS3VZel8aRKzCjjcJ5XmQRXmF4pw2VI/kTwTAUtS5as=;
        b=GjRqesUW0JqyU/VJBEH8EBNGYZGX5UW+t+rD/wY7JMUnyXmovs2mmREXtCLhkrH+9q
         VSRbxnFSrBoBzrmqroUYwhe34aOGVNxNR2fJGE+xeP65WVxd9SFxQ9YLBRRvBkAlKtuW
         UM38QSVn9SRVNioguWZfAiw5HO6apER4+Mtb7mFkZKqKdeVUV8b63ZCjhoqB4Hc4uz+L
         03rmKy40wDNF7/4wMJ9B3W7CvT5fgXTlG1bwoO9DIDRjaaTEPJM64nAzuTwiszWABnpP
         zzPS53WI36Ya0aKhbKznNQRN3bT2O/nDanVzDR7PgXu/OHpqSyAIN/uNDtTnjyZVd+4D
         +/yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=UBAjhrFq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SS3VZel8aRKzCjjcJ5XmQRXmF4pw2VI/kTwTAUtS5as=;
        b=IAPLv/I29U5Fx6pAUF0HRdSy1ufWauCsgHTU35Z8djU6LtcSSl1YsTNGQj0pI8seb6
         L/LfjfQ+bsCdcIARqeoqj30eRkVb15EwhJvVn4EW1blxE/xVO50RQ97NmvzPeAoF5Lmo
         yqLtQi50+ib3jNIz6s+JdIDviM4V/Qzub2bc66UZtNukeXcgx8fEFeqQCPRWh8artzA3
         aMxiyr8js971JXzPVZmWSeR/hTCXZQYVPrpHkhtcig9kzbk4ohuY+j6UCn/4zYMip+SQ
         yBYto03G94RvxcpJjAg7+3mhBN4ucwDzscJZpxoP1BqrjpVDKqIhnkMUfj3Bw4fX0/Xb
         QRig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SS3VZel8aRKzCjjcJ5XmQRXmF4pw2VI/kTwTAUtS5as=;
        b=5qYTPu5ZzgUbYSZVlYxFdHgmigX2W9S/wW7fK6TdzVcnqzbE/3pNLWv0QR6chOA6sk
         DcuCKOzTBbxU6s4NKcxIWzr5mWNuJViEvM215QB1mgUbAVjNnXtqZrYsMqzEE1ndSlqT
         1r2OQijgVW28ZrosYX5ynTaenw7QhW0qTNd9XRM0EmTaINjID6rjjvO4ll1pG8TDUCVQ
         72kRviX1Bb0ygEFwLzdCbLjVTrwwoLApNyIbGOyl2Zy8jGKt+P4IYb8LgtObZGNwuK2p
         ibLiV0yG9b/coScg2V6keJYW9pNi94Ef2GYFUrAivvSG/qrLTJnthwIxYq1f1r9RBUcL
         iGbQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532TvVCKo4uMTa7l/qhJ1xTZYNM3tXxgufsXFj9vjAb9Si4PaIx2
	wOnDerDBTmZMAFn2H4Xfxwo=
X-Google-Smtp-Source: ABdhPJzBGRlLRBj+0qGmQiuYVEN8QdDlmbQRoVQj8cjGNgunT7fwIfm/7FyI4uo4m92p9eUz1jt+iw==
X-Received: by 2002:a2e:3a09:: with SMTP id h9mr5015930lja.141.1639040582619;
        Thu, 09 Dec 2021 01:03:02 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3b9c:: with SMTP id g28ls218962lfv.3.gmail; Thu, 09
 Dec 2021 01:03:01 -0800 (PST)
X-Received: by 2002:ac2:4f8e:: with SMTP id z14mr569709lfs.316.1639040581672;
        Thu, 09 Dec 2021 01:03:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639040581; cv=none;
        d=google.com; s=arc-20160816;
        b=lOaPBObE3nMD1Z+9xMt2MyB27qaacF57KaiEGp0zzG9wRMGBw7piWPU9SSACXdrT33
         otT/cAam3jXENvlqWtnWFKTnmiUJ/Hx+Vnfkt23KHP3qqW2cas2FZ5p5q4NagWUjYwg0
         rnWEFz0Vcz70iGX7PwRKJ7mVNiUCEAuag4hh7BEgOtneSjWkPB5yTRvAxdU81XqPjL2G
         1n0y+OTvMaFOsXRYBmqt6fuQoQmlwUTdxU0DQg12pLqruvKtLpxYvloV1h3NX6Vei2fG
         SzEoQwATDHXAr73HKdxZiefv4PdkgWbbgow89e84MTrzPRtEWopBert5GbYu+J/mkUHd
         woRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=E26dnRV33umx8ChJ6qCSA81TgS29bOEnlTFznvEPm70=;
        b=wp0j2kXsTHBKo8Zy40uKO/wFkU7dY9LwhIaashq0ffUemOhlt0GATBbGi30bcb/SCd
         yn4/C84LNp0NzzI8YdpSLAhz2McSReL3qYLMLUvlF44Xc/PKtULgufFLcXWne2f+C0qi
         Gat6JkNV5xJlCTjVS1tTXtjte8Hi6dqcGh0ooNsk8g1Xsm6KLdOCjbfQ/Q6+i5yQYhpn
         tcLVW9jV1akM9CgApSy5pA02LJLHdAEisFz47R2Uk2qrpfgb8jeyyssAR1L9cEDhOF/o
         kTFshzfZ+vIt4+EgdEBK4OOQczN7zZ6E0v+Arn0kaRop4FA0jsDI5n3Ul8xGoDjbIByP
         fdIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=UBAjhrFq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d8si246564lfv.13.2021.12.09.01.03.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 01:03:01 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 "Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>,
 "Jiang, Dave" <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 "x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <BN9PR11MB52766CC46D3D4865308F61D98C709@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
 <BN9PR11MB52766CC46D3D4865308F61D98C709@BN9PR11MB5276.namprd11.prod.outlook.com>
Date: Thu, 09 Dec 2021 10:03:00 +0100
Message-ID: <87pmq6ywu3.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=UBAjhrFq;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Kevin,

On Thu, Dec 09 2021 at 06:26, Kevin Tian wrote:
>> From: Jason Gunthorpe <jgg@nvidia.com>
>> I don't know of any use case for more than one interrupt on a queue,
>> and if it did come up I'd probably approach it by making the queue
>> handle above also specify the 'queue relative HW index'
>
> We have such use case with IDXD.
>
> Basically the IDXD queue allows software to put an interrupt handle
> (the index of MSI-X or IMS entry) in the submitted descriptor. Upon
> completion of the descriptor the hardware finds the specified entry 
> and then generate interrupt to notify software.
>
> Conceptually descriptors submitted to a same queue can use different
> handles, implying one queue can be associated to multiple interrupts.

I think you are looking at that from the internal implementation details
of IDXD. But you can just model it in an IDXD implementation agnostic
way:

     ENQCMD(PASID, IMS-ENTRY,.....)

implies an on demand allocation of a virtual queue, which is deallocated
when the command completes. The PASID and IMS-ENTRY act as the 'queue'
identifier.

The implementation detail of IDXD that it executes these computations on
an internal shared workqueue does not change that.

Such a workqueue can only execute one enqueued command at a time, which
means that during the execution of a particular command that IDXD
internal workqueue represents the 'virtual queue' which is identified by
the unique PASID/IMS-ENTRY pair.

No?

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87pmq6ywu3.ffs%40tglx.
