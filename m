Return-Path: <linux-ntb+bncBCS4BDN7YUCRB2U7RHUAKGQE5XQSSEA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B53B043698
	for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 15:30:19 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id d14sf3977324vka.6
        for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 06:30:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560432618; cv=pass;
        d=google.com; s=arc-20160816;
        b=WpguB6mSELSSYSnzehCmGUFZff219dIuuIoNkR46/UD4NTHaYZ/4ClHrrJLalwPgxT
         VDK9Uekbo3/2o68Bd9BlkXxc892pQJI39rmNiVFncdGr6dl0obtYn6CA+GaHfjguUtmm
         mJwsO0zgwzmWuRyp08ee80llsHnL+sH6hIOKPQDIlyOAveKeqbtmOC4OyTWheFE3F0HR
         Z1nJksXT9+9uc10GQry+k6yVF3p8jlmamnCEvv0xefzQhch52xqWhk1V7cnFJ8KmLx2H
         Ur/AjN5K+bNomKbw/8EF7rYKsAf5C+qVTRcuwqXYTYeAmB3bNhV5AztGOPPE52izmd1x
         0lKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=fWqnar0+4Jrz/ob3/UGSWbDI88oxxNhyz+DTVcvEz40=;
        b=iJkDRGvaUjttYUpIwCbfwW/s9Ps60ZrSw34cI30p1XpSsEAuleIjOd0qD7xM2m9u7c
         Lzuw+/oxjrF8OR2ZumrfxA7vAkCmEZMNyMNMQ0n6U/eCxhwO3g5gd5goEuwQ4Gw0c9RH
         2jrwfdQvvE+VM0FRdKl99kTrF5YFB1jtXHtpacneGUsNQohd/U5lt328i7lzz3Oyzcsm
         mSFP2SirO6LW7S7BrrvIPfIe33yGitmWlaIiABtj1o3liqTe8KMU/zbw4I9dE20uN8EV
         sPWhwhOWfllqDI8KdG8ctRbF12rgSj8T9X89GrDuMeKeiaHNBHHLCg4t4XIYWOXgQpWS
         a/RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=BXofh382;
       spf=neutral (google.com: 2607:f8b0:4864:20::c43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fWqnar0+4Jrz/ob3/UGSWbDI88oxxNhyz+DTVcvEz40=;
        b=mgwLYVTSD/jO1kzhDQRawYLCO92o0WPZOHgc1wyVnswdTqTGfoMvFezLQICjkT6VTu
         K7Z06+7QPfc10cd+n65Ik1u7/qLeyKrTHwOjYRUjEcPAxYFyJdNP3MM8Xhkn75wslwe5
         aWqpGL+C0DZlI9d/GAN//orFTW9trZ8pm+nebThT9S25rqQg6mZLSyYlLbJbneSE1BI3
         PwRKQXwWDJxjiKdao/UXmXDHbDA3dv3fHaOxzQ8N8b4DnZqdhNjxFlVub6qRWnN5JW4G
         lOjK81mgzKAdJOQw3sKf5uM1bq4W3RmKJDN/ZvVGQHCIwpSH5TEd3RjEawmlDc5fbbH5
         fodQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fWqnar0+4Jrz/ob3/UGSWbDI88oxxNhyz+DTVcvEz40=;
        b=J6EvEvqeQgFi2UL16f5b1S+e8nlwgxZhxv/WKRT4qonMrEYecWYTnCIxL/QAJML1BI
         1TNUCY0Nxz2Jkvce3cmX27Jr2iufylPzn3KF+qN/xI7hD5cWsbI2e/Cu2guXWoKONqja
         2PsmpUvVzXFWcpjSLNFT6gILHLUBqieEuCIRWzMcCPIHcQ+WK0OQc+yyMtqpM3tO8etZ
         PpXFGpO3XwAZrjnS1tPnLVOQ9r2xRhlsnoYktoCWWvippiie/7qBaYLPcdCZxjQQIZfk
         Q4MCDXqnW6N2X6DA9zbfFPwJDarshrAM0nM96jLlKk4qjvppGIN7JIUpoEohdd15DgbS
         kqvQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXkEBTHAatpPeePAYixHeyEu7rpG3k9b0mpZ1tXJqlTFWj8ULTS
	0U4koAwWsTW2I/rSo878Xog=
X-Google-Smtp-Source: APXvYqxFAaDNg8UBZUqIyNQ3Fahf62nlKibb9klgyCmAQdtfmYZDEwbeRWJB9cm2friyq27Ixqv1EA==
X-Received: by 2002:a67:ee8d:: with SMTP id n13mr20201375vsp.49.1560432618577;
        Thu, 13 Jun 2019 06:30:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:2d41:: with SMTP id t62ls230981vkt.5.gmail; Thu, 13 Jun
 2019 06:30:18 -0700 (PDT)
X-Received: by 2002:a1f:62c3:: with SMTP id w186mr18046435vkb.82.1560432618264;
        Thu, 13 Jun 2019 06:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560432618; cv=none;
        d=google.com; s=arc-20160816;
        b=IyXM05xcFmrMOH5cHtwA5nk+UcggJYmH59+szHfdbt/f2nJE2iiX5BZglGjzyYEzDY
         j0GuIkCzYTGOFQe2qmD8Yp9Eze+cNAkdn1HA0HmG6qL0wRThmUzJ09X28/+qQfXvHIMs
         EiDY3W6P7356jO2WIbn12lrbeb4QaoVuDauz/LgcJ1rhbIRpUwj2L/oBlmyj+ixeBX+m
         EOab0XKZYFN2QCzl7V97ZSCINBmmbvXRG6SFY6VUsHNEY7mki8AiaPhrCz/StaZGuZ3c
         xTYTeJgEwqU+FsghzdyL28RWQ4Ernrc3V2amI996c0S4L8R0JO/i9J756Czq6eAgbymi
         ucaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gpC/BcbJqZm/b199OKanFtWwuFNfn3Nh4TAP7OeO2NA=;
        b=0/xx9BxV8Psafy1sBTQ3KR+ZFibT8zvJggJ8mhYvMj3KRuDrvh1Tohq8A+CZXLr8iK
         cFh03poV2C764/jnJsTaUU9oWX057NrIgoX8FKAla3+tikHbzjel7+lWIUYbdF62Qd7D
         ujZEM2f/b+ALIQM4aVsZmewUdI2s3Z8/0Z9/ayjDNm3uD476ZFog9jbeWilyHyFJrxyT
         Q5Yg4nbn8Qm9RfX7evyY+vJstwn3MEr0kUTKIE3kJH2ls2hkA6rKj91i9oEkt+S4MfvP
         xpmIsBxKnQnqZJKInAVxCFV5vL9epMEQSnYrFt7w3IkHHzqH32HyJSStdRBHJDV4KLy9
         zqVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=BXofh382;
       spf=neutral (google.com: 2607:f8b0:4864:20::c43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id 63si225503vkn.0.2019.06.13.06.30.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 06:30:18 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::c43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-yw1-xc43.google.com with SMTP id l79so510232ywe.11
        for <linux-ntb@googlegroups.com>; Thu, 13 Jun 2019 06:30:18 -0700 (PDT)
X-Received: by 2002:a0d:ea10:: with SMTP id t16mr32493125ywe.221.1560432617677;
        Thu, 13 Jun 2019 06:30:17 -0700 (PDT)
Received: from kudzu.us (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id p12sm742658ywg.72.2019.06.13.06.30.16
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 06:30:17 -0700 (PDT)
Date: Thu, 13 Jun 2019 09:30:15 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org, iommu@lists.linux-foundation.org,
	linux-kselftest@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Allen Hubbe <allenbh@gmail.com>, Dave Jiang <dave.jiang@intel.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Eric Pilmore <epilmore@gigaio.com>
Subject: Re: [PATCH v5 00/10]  Support using MSI interrupts in ntb_transport
Message-ID: <20190613133014.GE1572@kudzu.us>
References: <20190523223100.5526-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190523223100.5526-1-logang@deltatee.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=BXofh382;       spf=neutral (google.com: 2607:f8b0:4864:20::c43 is
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

On Thu, May 23, 2019 at 04:30:50PM -0600, Logan Gunthorpe wrote:
> This is another resend as there has been no feedback since v4.
> Seems Jon has been MIA this past cycle so hopefully he appears on the
> list soon.
> 
> I've addressed the feedback so far and rebased on the latest kernel
> and would like this to be considered for merging this cycle.
> 
> The only outstanding issue I know of is that it still will not work
> with IDT hardware, but ntb_transport doesn't work with IDT hardware
> and there is still no sensible common infrastructure to support
> ntb_peer_mw_set_trans(). Thus, I decline to consider that complication
> in this patchset. However, I'll be happy to review work that adds this
> feature in the future.
> 
> Also, as the port number and resource index stuff is a bit complicated,
> I made a quick out of tree test fixture to ensure it's correct[1]. As
> an excerise I also wrote some test code[2] using the upcomming KUnit
> feature.

Sorry for the delay.  The patch is now in the ntb-next branch.  We've
missed window for 5.2, but it will be in the 5.3 pull request (barring
last minute comments).

Thanks,
Jon

> 
> Logan
> 
> [1] https://repl.it/repls/ExcitingPresentFile
> [2] https://github.com/sbates130272/linux-p2pmem/commits/ntb_kunit
> 
> --
> 
> Changes in v5:
> 
> * Rebased onto v5.2-rc1 (plus the patches in ntb-next)
> 
> --
> 
> Changes in v4:
> 
> * Rebased onto v5.1-rc6 (No changes)
> 
> * Numerous grammar and spelling mistakes spotted by Bjorn
> 
> --
> 
> Changes in v3:
> 
> * Rebased onto v5.1-rc1 (Dropped the first two patches as they have
>   been merged, and cleaned up some minor conflicts in the PCI tree)
> 
> * Added a new patch (#3) to calculate logical port numbers that
>   are port numbers from 0 to (number of ports - 1). This is
>   then used in ntb_peer_resource_idx() to fix the issues brought
>   up by Serge.
> 
> * Fixed missing __iomem and iowrite calls (as noticed by Serge)
> 
> * Added patch 10 which describes ntb_msi_test in the documentation
>   file (as requested by Serge)
> 
> * A couple other minor nits and documentation fixes
> 
> --
> 
> Changes in v2:
> 
> * Cleaned up the changes in intel_irq_remapping.c to make them
>   less confusing and add a comment. (Per discussion with Jacob and
>   Joerg)
> 
> * Fixed a nit from Bjorn and collected his Ack
> 
> * Added a Kconfig dependancy on CONFIG_PCI_MSI for CONFIG_NTB_MSI
>   as the Kbuild robot hit a random config that didn't build
>   without it.
> 
> * Worked in a callback for when the MSI descriptor changes so that
>   the clients can resend the new address and data values to the peer.
>   On my test system this was never necessary, but there may be
>   other platforms where this can occur. I tested this by hacking
>   in a path to rewrite the MSI descriptor when I change the cpu
>   affinity of an IRQ. There's a bit of uncertainty over the latency
>   of the change, but without hardware this can acctually occur on
>   we can't test this. This was the result of a discussion with Dave.
> 
> --
> 
> This patch series adds optional support for using MSI interrupts instead
> of NTB doorbells in ntb_transport. This is desirable seeing doorbells on
> current hardware are quite slow and therefore switching to MSI interrupts
> provides a significant performance gain. On switchtec hardware, a simple
> apples-to-apples comparison shows ntb_netdev/iperf numbers going from
> 3.88Gb/s to 14.1Gb/s when switching to MSI interrupts.
> 
> To do this, a couple changes are required outside of the NTB tree:
> 
> 1) The IOMMU must know to accept MSI requests from aliased bused numbers
> seeing NTB hardware typically sends proxied request IDs through
> additional requester IDs. The first patch in this series adds support
> for the Intel IOMMU. A quirk to add these aliases for switchtec hardware
> was already accepted. See commit ad281ecf1c7d ("PCI: Add DMA alias quirk
> for Microsemi Switchtec NTB") for a description of NTB proxy IDs and why
> this is necessary.
> 
> 2) NTB transport (and other clients) may often need more MSI interrupts
> than the NTB hardware actually advertises support for. However, seeing
> these interrupts will not be triggered by the hardware but through an
> NTB memory window, the hardware does not actually need support or need
> to know about them. Therefore we add the concept of Virtual MSI
> interrupts which are allocated just like any other MSI interrupt but
> are not programmed into the hardware's MSI table. This is done in
> Patch 2 and then made use of in Patch 3.
> 
> The remaining patches in this series add a library for dealing with MSI
> interrupts, a test client and finally support in ntb_transport.
> 
> The series is based off of v5.1-rc6 plus the patches in ntb-next.
> A git repo is available here:
> 
> https://github.com/sbates130272/linux-p2pmem/ ntb_transport_msi_v4
> 
> Thanks,
> 
> Logan
> 
> --
> 
> Logan Gunthorpe (10):
>   PCI/MSI: Support allocating virtual MSI interrupts
>   PCI/switchtec: Add module parameter to request more interrupts
>   NTB: Introduce helper functions to calculate logical port number
>   NTB: Introduce functions to calculate multi-port resource index
>   NTB: Rename ntb.c to support multiple source files in the module
>   NTB: Introduce MSI library
>   NTB: Introduce NTB MSI Test Client
>   NTB: Add ntb_msi_test support to ntb_test
>   NTB: Add MSI interrupt support to ntb_transport
>   NTB: Describe the ntb_msi_test client in the documentation.
> 
>  Documentation/ntb.txt                   |  27 ++
>  drivers/ntb/Kconfig                     |  11 +
>  drivers/ntb/Makefile                    |   3 +
>  drivers/ntb/{ntb.c => core.c}           |   0
>  drivers/ntb/msi.c                       | 415 +++++++++++++++++++++++
>  drivers/ntb/ntb_transport.c             | 169 ++++++++-
>  drivers/ntb/test/Kconfig                |   9 +
>  drivers/ntb/test/Makefile               |   1 +
>  drivers/ntb/test/ntb_msi_test.c         | 433 ++++++++++++++++++++++++
>  drivers/pci/msi.c                       |  54 ++-
>  drivers/pci/switch/switchtec.c          |  12 +-
>  include/linux/msi.h                     |   8 +
>  include/linux/ntb.h                     | 196 ++++++++++-
>  include/linux/pci.h                     |   9 +
>  tools/testing/selftests/ntb/ntb_test.sh |  54 ++-
>  15 files changed, 1386 insertions(+), 15 deletions(-)
>  rename drivers/ntb/{ntb.c => core.c} (100%)
>  create mode 100644 drivers/ntb/msi.c
>  create mode 100644 drivers/ntb/test/ntb_msi_test.c
> 
> --
> 2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190613133014.GE1572%40kudzu.us.
For more options, visit https://groups.google.com/d/optout.
