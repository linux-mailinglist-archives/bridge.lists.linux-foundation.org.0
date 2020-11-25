Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAAA2C6F1E
	for <lists.bridge@lfdr.de>; Sat, 28 Nov 2020 06:36:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 90B76876AD;
	Sat, 28 Nov 2020 05:36:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QnmIoyj0MmFl; Sat, 28 Nov 2020 05:36:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80672875F3;
	Sat, 28 Nov 2020 05:36:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6138DC0052;
	Sat, 28 Nov 2020 05:36:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DF3FDC0052;
 Wed, 25 Nov 2020 22:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CB8A986EE3;
 Wed, 25 Nov 2020 22:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IZmNGhqKPaDm; Wed, 25 Nov 2020 22:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D371C86EA2;
 Wed, 25 Nov 2020 22:44:40 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id d142so211944wmd.4;
 Wed, 25 Nov 2020 14:44:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mMrMdknFbsC77SFRvwwD3pm1cwl3V2MP65kzVJE6tY4=;
 b=mE3/9/w1S1BsFafykdzrNl6nUKLQtv3irXzEz/AwtJdLppuZQnzVWeoYFC7Qb5OQef
 2DAcZ7D6Froq/rlKPIBwqGtt0C/0XmhDJf/Ua0btTGl1wBl77rh04suLM7Drqc/fd1vb
 erjCUGXrwTRfKAEK60/5plkWP59Lm5M7QZ9ENMraFyUEU5TYdKtuuKGBjQ65xtLyj0UE
 nayIBzzwS8QdOAkDbWxTvDHZJGPoguOAiztDitejPSo1Rp931ceTN4KgHMls79AEVEp8
 0UjkiGW0It0CwNfB/koaXcS1sEgjLFm2K1jcT9QDdZUmcgiCMPoll+6KvJ2hAfFlaA1V
 8PSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mMrMdknFbsC77SFRvwwD3pm1cwl3V2MP65kzVJE6tY4=;
 b=k9WmTDZ25judW7LLeRLZofw+KqVImgNYECjvFTGC3KowlLmuy/u5uEZs/w2bZxkWHt
 QERCsGOt/XX9bezxm+W4Y2WrTdEj8fgg00qLUp3oi2QFwZJb+TNJzjrSLiuwdw3Uz3oF
 C9+4ZLIyAwWejbGMCS6FBmqA+ejL5Q5XwD44KnXKIMvOfS9mTDWgHlUzLBnvKH84/E+z
 YBxWURN+6/ErOdIuyXLHi0q2mKQk0SYpHREtE235KipBR1rC5DpEhYxlgy/fZTmwSUZ0
 LC2gexAI0uSoyASDGeJWbNprqCkJGukvcu12jwehwmcfPIdCre73Z2heHNKI6TLFf8sA
 HNYw==
X-Gm-Message-State: AOAM5327j1rlJqgTpkujnPvRV0jFYVFpjJkXwvoZN48IsXJGIafycoFc
 TbvOWFMDN39LkxMJD9rXORo=
X-Google-Smtp-Source: ABdhPJzVXPr1uOlB1vaw2cfl6zSoOiLq1F6oo5r6Yg/UanqxqpZONWe00UKvdrBaRFZ4o0pgYT/ByA==
X-Received: by 2002:a7b:cf0a:: with SMTP id l10mr6364382wmg.103.1606344279394; 
 Wed, 25 Nov 2020 14:44:39 -0800 (PST)
Received: from [192.168.1.122]
 (cpc92720-cmbg20-2-0-cust364.5-4.cable.virginm.net. [82.21.83.109])
 by smtp.gmail.com with ESMTPSA id h15sm6411655wrw.15.2020.11.25.14.44.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Nov 2020 14:44:38 -0800 (PST)
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
 <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
 <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com>
Date: Wed, 25 Nov 2020 22:44:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Sat, 28 Nov 2020 05:36:13 +0000
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless <linux-wireless@vger.kernel.org>, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 linux-security-module@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Kees Cook <keescook@chromium.org>, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, tipc-discussion@lists.sourceforge.net,
 Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 patches@opensource.cirrus.com, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: Re: [Bridge] [PATCH 000/141] Fix fall-through warnings for Clang
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On 25/11/2020 00:32, Miguel Ojeda wrote:
> I have said *authoring* lines of *this* kind takes a minute per line.
> Specifically: lines fixing the fallthrough warning mechanically and
> repeatedly where the compiler tells you to, and doing so full-time for
> a month.
<snip>
> It is useful since it makes intent clear.
To make the intent clear, you have to first be certain that you
 understand the intent; otherwise by adding either a break or a
 fallthrough to suppress the warning you are just destroying the
 information that "the intent of this code is unknown".
Figuring out the intent of a piece of unfamiliar code takes more
 than 1 minute; just because
    case foo:
        thing;
    case bar:
        break;
 produces identical code to
    case foo:
        thing;
        break;
    case bar:
        break;
 doesn't mean that *either* is correct — maybe the author meant
 to write
    case foo:
        return thing;
    case bar:
        break;
 and by inserting that break you've destroyed the marker that
 would direct someone who knew what the code was about to look
 at that point in the code and spot the problem.
Thus, you *always* have to look at more than just the immediate
 mechanical context of the code, to make a proper judgement that
 yes, this was the intent.  If you think that that sort of thing
 can be done in an *average* time of one minute, then I hope you
 stay away from code I'm responsible for!
One minute would be an optimistic target for code that, as the
 maintainer, one is already somewhat familiar with.  For code
 that you're seeing for the first time, as is usually the case
 with the people doing these mechanical fix-a-warning patches,
 it's completely unrealistic.

A warning is only useful because it makes you *think* about the
 code.  If you suppress the warning without doing that thinking,
 then you made the warning useless; and if the warning made you
 think about code that didn't *need* it, then the warning was
 useless from the start.

So make your mind up: does Clang's stricter -Wimplicit-fallthrough
 flag up code that needs thought (in which case the fixes take
 effort both to author and to review) or does it flag up code
 that can be mindlessly "fixed" (in which case the warning is
 worthless)?  Proponents in this thread seem to be trying to
 have it both ways.

-ed
