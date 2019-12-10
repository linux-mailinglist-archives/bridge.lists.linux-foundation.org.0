Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01903119347
	for <lists.bridge@lfdr.de>; Tue, 10 Dec 2019 22:08:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D0BC879A7;
	Tue, 10 Dec 2019 21:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8xp4NIMBJLrE; Tue, 10 Dec 2019 21:08:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91559883A8;
	Tue, 10 Dec 2019 21:08:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 68BF1C1797;
	Tue, 10 Dec 2019 21:08:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 53527C0881
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:08:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 414F7874A7
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:08:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H6lUkPvpDkLF for <bridge@lists.linux-foundation.org>;
 Tue, 10 Dec 2019 21:08:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 026208639B
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 21:08:39 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id i12so2982674qtp.6
 for <bridge@lists.linux-foundation.org>; Tue, 10 Dec 2019 13:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=3nRYlS0/YHih4zITmDaDbI3UpDrDOmoWaeoqzXN/ZeQ=;
 b=sIdCi2e60wFGD2yHBP69y330EaJI8nNHi7epjFzetDNeXwlj0wuR9rnoPzmcXw/BZ0
 b0k4kW1TF25SPsxcPM8XXV5AXxXS2dRrZIYXKcblY1aDsHrfNKZfxDQRZ7URIuSnvqt9
 rX69UE00nwNP05osLtNKA4cgluLQKwSC3leMhHLmk1GvNt2FdQTlL4Xi0nQZm0sIbKDO
 RfXlMwlZyXi10aVci8Huk5G5RG99sHDCsUfBI2bUFLI2DqozfDfCkGQF4RShEUP/vAy0
 7GTVzY1sSQE0Gsi/SkOLKTg9WqFePjetKcWPk8tCz7bt7Xkq5pNRJyrKfJbXkiAYIm53
 Qpdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=3nRYlS0/YHih4zITmDaDbI3UpDrDOmoWaeoqzXN/ZeQ=;
 b=ZwSTjjP71hIItjZO3r7y1OCJwPpCVj7d7jv72Z5BCdHOWdQm4WZiUuaTTEkEqomH2m
 1DqZmeHDCVH0L+TPLvMjvLIfUrLoqPyHvnd3ltTlm/GJnpym79m6c0SXAPfRvCQT/F5E
 tqSQ9FXT4BCoAidFX35dyGw+jQnGoosU9cRd9n9k6ehxhou+zZ+7cjR1923gJyH5xPs0
 YeksCkxYBAEjnIddvJfl0V4u5TSi885/mN19F0SJKODqK8VS0/1f6ao8zCOtFmc1iaR/
 WxYwBRZ9kXUQ1ZdCo9H/I502VWoAJ3BXK+qb0FgwLOKHFmVuK84feiAzc/RuJLrdx8gL
 aOXw==
X-Gm-Message-State: APjAAAWB6lv4ok8QVM8duiF3lnvJghwZiIZNU49F/EwywIjxWl8hFKQY
 1MHWuObn4gQaB9rQgY2Q7Pw=
X-Google-Smtp-Source: APXvYqx5XO1J58kTgw63WFnWTS22IVEci4YpTRq/EMSSUXKSpAZhlpgoNz3pVX7u2v2KS+84GtNgrA==
X-Received: by 2002:ac8:45c7:: with SMTP id e7mr4702199qto.334.1576012118946; 
 Tue, 10 Dec 2019 13:08:38 -0800 (PST)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id x68sm1305885qkc.22.2019.12.10.13.08.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 13:08:38 -0800 (PST)
Date: Tue, 10 Dec 2019 16:08:36 -0500
Message-ID: <20191210160836.GB1439145@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
In-Reply-To: <40090370-4d81-0ea9-e81a-da59534161b7@cumulusnetworks.com>
References: <20191209230522.1255467-1-vivien.didelot@gmail.com>
 <a3b8e24d-5152-7243-545f-8a3e5fbaa53a@cumulusnetworks.com>
 <20191210143931.GF1344570@t480s.localdomain>
 <2f4e351c-158a-4f00-629f-237a63742f66@cumulusnetworks.com>
 <20191210151047.GB1423505@t480s.localdomain>
 <1aa8b6e4-6a73-60b0-c5fb-c0dfa05e27e6@cumulusnetworks.com>
 <20191210153441.GB1429230@t480s.localdomain>
 <40090370-4d81-0ea9-e81a-da59534161b7@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next] net: bridge: add STP xstats
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

On Tue, 10 Dec 2019 22:52:59 +0200, Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:
> >>>>>> Why do you need percpu ? All of these seem to be incremented with the
> >>>>>> bridge lock held. A few more comments below.
> >>>>>
> >>>>> All other xstats are incremented percpu, I simply followed the pattern.
> >>>>>
> >>>>
> >>>> We have already a lock, we can use it and avoid the whole per-cpu memory handling.
> >>>> It seems to be acquired in all cases where these counters need to be changed.
> >>>
> >>> Since the other xstats counters are currently implemented this way, I prefer
> >>> to keep the code as is, until we eventually change them all if percpu is in
> >>> fact not needed anymore.
> >>>
> >>> The new series is ready and I can submit it now if there's no objection.
> >>
> >> There is a reason other counters use per-cpu - they're incremented without any locking from fast-path.
> >> The bridge STP code already has a lock which is acquired in all of these paths and we don't need
> >> this overhead and the per-cpu memory allocations. Unless you can find a STP codepath which actually
> >> needs per-cpu, I'd prefer you drop it.
> > 
> > Ho ok I understand what you mean now. I'll drop the percpu attribute.
> 
> Great, thanks again.
> I think it's clear, but I'll add just in case to avoid extra work - you can drop
> the dynamic memory allocation altogether and make the struct part of net_bridge_port.

Yup, that's what I've done and it makes the patch shamely small now ;)


Thanks,

	Vivien
