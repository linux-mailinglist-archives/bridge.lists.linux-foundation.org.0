Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEBA8D790
	for <lists.bridge@lfdr.de>; Wed, 14 Aug 2019 18:02:04 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B4F22F11;
	Wed, 14 Aug 2019 16:01:55 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BA05BED1
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 16:01:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1BB188D
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 16:01:52 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id b29so72460865lfq.1
	for <bridge@lists.linux-foundation.org>;
	Wed, 14 Aug 2019 09:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=4wY0puZ76rUC3DSckf3mPRYmF7SPUJuOAo8CaB7ZdL0=;
	b=ek6qJHh8grpDMf9DPB7XyzKQm9N39M5jVmFc2DDmCOdXTzqoHVHoDqoDk1YCR2lIOn
	oAbO+mrAMtobesvvsCq+HgShDk7X2zlvDeGqfsqa/NjjwWGs33Qrni2SlvGQSGrbholN
	0HekEIdqh5fmessXGirxHkOVY6vFbk6n+jk3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=4wY0puZ76rUC3DSckf3mPRYmF7SPUJuOAo8CaB7ZdL0=;
	b=leERKV5yiQxVCNCiZi6tHxyYKlEyGlwCGfFf0unkKzAWH19I3NS8bn1gubd5frW60B
	0QohgRJQdj2imHJo9pvH8LlMZBRkWZgPLXgaqPudcCpWg+59NUU+AcGNYPe5wG4QIiNh
	yW6ZjRSMnuh2bIAqx+gQoOVWZgRU1groSuf5boIG3+FHnep8SyQUwAiyy02QxsKbMd+A
	lVrmuhwiMVxx7rUYasF8SPuiA11ZWIYq+nBbmJY8OX97zc1jB91Ca/eLWBpb+BMrUfIx
	mNeaXUuvhYIZZh5KY/cS+6JmA+aw5vaK+Hr71GGdv0i7u9/0UbExa0XchgVR4A3BFcCR
	sxJA==
X-Gm-Message-State: APjAAAXIv94hyi/nxVajRrRRCvrTbmMILNBBuwXkh6sX021NnEtCPrNC
	UvHJFTKRBnQf4M4WqL/Ls4yXyqy9iCM=
X-Google-Smtp-Source: APXvYqyv81KLI7ZWHf2QoqI2EfwO+kAHqEMEoi7E++qLvVKglA5H9Nc2crBymRrmxmBPyCCMzJsP0A==
X-Received: by 2002:ac2:5104:: with SMTP id q4mr98702lfb.56.1565798509937;
	Wed, 14 Aug 2019 09:01:49 -0700 (PDT)
Received: from [192.168.0.104] ([79.134.174.40])
	by smtp.googlemail.com with ESMTPSA id
	d3sm3205lfj.15.2019.08.14.09.01.47
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 14 Aug 2019 09:01:49 -0700 (PDT)
To: netdev@vger.kernel.org
References: <20190814144024.9710-1-nikolay@cumulusnetworks.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <81258876-5f03-002c-5aa8-2d6d00e6d99e@cumulusnetworks.com>
Date: Wed, 14 Aug 2019 19:01:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190814144024.9710-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
	davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/4] net: bridge: mdb: allow
 dump/add/del of host-joined entries
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 8/14/19 5:40 PM, Nikolay Aleksandrov wrote:
> Hi,
> This set makes the bridge dump host-joined mdb entries, they should be
> treated as normal entries since they take a slot and are aging out.
> We already have notifications for them but we couldn't dump them until
> now so they remained hidden. We dump them similar to how they're
> notified, in order to keep user-space compatibility with the dumped
> objects (e.g. iproute2 dumps mdbs in a format which can be fed into
> add/del commands) we allow host-joined groups also to be added/deleted via
> mdb commands. That can later be used for L2 mcast MAC manipulation as
> was recently discussed. Note that iproute2 changes are not necessary,
> this set will work with the current user-space mdb code.
> 
> Patch 01 - a trivial comment move
> Patch 02 - factors out the mdb filling code so it can be
>            re-used for the host-joined entries
> Patch 03 - dumps host-joined entries
> Patch 04 - allows manipulation of host-joined entries via standard mdb
>            calls
> 
> Thanks,
>  Nik
> 
> Nikolay Aleksandrov (4):
>   net: bridge: mdb: move vlan comments
>   net: bridge: mdb: factor out mdb filling
>   net: bridge: mdb: dump host-joined entries as well
>   net: bridge: mdb: allow add/delete for host-joined groups
> 
>  net/bridge/br_mdb.c       | 171 +++++++++++++++++++++++++-------------
>  net/bridge/br_multicast.c |  24 ++++--
>  net/bridge/br_private.h   |   2 +
>  3 files changed, 133 insertions(+), 64 deletions(-)
> 

Self-NAK
There's a double notification sent for manual add/del of host groups.
It's a trivial fix, I'll spin v2 later after running more tests.

