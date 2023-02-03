Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653346892FD
	for <lists.bridge@lfdr.de>; Fri,  3 Feb 2023 10:02:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF08741058;
	Fri,  3 Feb 2023 09:02:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF08741058
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=DG1clRKv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hJrBWen6yL90; Fri,  3 Feb 2023 09:02:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 7589F404DB;
	Fri,  3 Feb 2023 09:02:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7589F404DB
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2E76FC007C;
	Fri,  3 Feb 2023 09:02:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AC8BAC002B
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 09:02:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9248281E52
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 09:02:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9248281E52
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=DG1clRKv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3s65TIIHoGCE for <bridge@lists.linux-foundation.org>;
 Fri,  3 Feb 2023 09:02:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D63FD820D7
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D63FD820D7
 for <bridge@lists.linux-foundation.org>; Fri,  3 Feb 2023 09:02:40 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id cw4so4454495edb.13
 for <bridge@lists.linux-foundation.org>; Fri, 03 Feb 2023 01:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=5Dk9oRwWoL6Eq4hgVuGxNfkU9whS5cyWy9FWflgjKWo=;
 b=DG1clRKvCrEsxzYopyxVfqz2ynaSB/i1pW0NcbwP3OAdNhXVEJBaj4gx/tQSEmgHpl
 76moVpcYec8yFX1LV4rOvEsz9PETyE5mVX+9Qfdaso+TUbbEP0HxVtJEpnq8KPGl9NOC
 QEw02HPDpGimTv+kvKl66aMPl4CjCHxgGRsBIi50aaGBp2NGecisznzAQOuum56XL7Ls
 AYWQn+ynEM4UMCwrtbZXZRB/eD2rj/HIBxVev5SU36+prdEOum482fLhkCt4dxhshmRK
 WJY2A+eO7GNipQfBVGUzmwg6pfKEhxF0DdU6ERR+W0+X0VGZbH3BC5xTLo1OqznX15jf
 3/Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=5Dk9oRwWoL6Eq4hgVuGxNfkU9whS5cyWy9FWflgjKWo=;
 b=Zom5R+o3lWuDJh3RJA6DM7wXY2D0laUQ2gH3f/XNKUDDJ8pW9ehwYa41c7QRmK1bDU
 +812M4haNrO6TiPpn3zX7fWrK81947Iq39icI94E71SHWo4kAV+XP6SLXqg9Lx7ufluI
 f6MqkO4Coi7eVOb11U9pdSCm+0LK3sez8oQoAC9nrWr0UTBj8xnI1z7AP/HXHlITNQHf
 v5X+J+PrOd187lil47Yw+kKCZRAxljFxs18+ZyApYlJU5CpsU/D1Mnngxjx7xnJeldBs
 0m3L7Qp7oB7MtyFeTgDEXE3fSgVhue7AWzA8asaj3jeswJjBa9wFmYd3Lnt5T+G8ZMME
 1ZBA==
X-Gm-Message-State: AO0yUKUPRZBURgivUM2/PBbrY4ieWuDXOUTCmSOpWt7PuXI1viJAHe5H
 U0+mpx7QkAqI5uhv81muAL0TCg==
X-Google-Smtp-Source: AK7set/r59J0g2PJFpZV8vVuKmWj3HAPnJLAa+CmyhxGVomGjfq0jGabAAYixW3ajTM7qKb+CYyf2w==
X-Received: by 2002:a50:d610:0:b0:499:4130:fae with SMTP id
 x16-20020a50d610000000b0049941300faemr9882422edi.10.1675414959035; 
 Fri, 03 Feb 2023 01:02:39 -0800 (PST)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 d16-20020a056402001000b0048789661fa2sm800356edu.66.2023.02.03.01.02.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 03 Feb 2023 01:02:38 -0800 (PST)
Message-ID: <a8d81917-c021-deb1-4121-927859d47da5@blackwall.org>
Date: Fri, 3 Feb 2023 11:02:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Petr Machata <petrm@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Roopa Prabhu <roopa@nvidia.com>,
 netdev@vger.kernel.org
References: <cover.1675359453.git.petrm@nvidia.com>
 <ea90ca36a55f0ec3e0f1a20418f4c9e685a7a8ab.1675359453.git.petrm@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <ea90ca36a55f0ec3e0f1a20418f4c9e685a7a8ab.1675359453.git.petrm@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: Ido Schimmel <idosch@nvidia.com>, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next v3 16/16] selftests: forwarding:
 bridge_mdb_max: Add a new selftest
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

On 02/02/2023 19:59, Petr Machata wrote:
> Add a suite covering mcast_n_groups and mcast_max_groups bridge features.
> 
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---
> 
> Notes:
>     v2:
>     - Adjust the tests that check setting max below n and
>       reset of max on VLAN snooping enablement
>     - Make test naming uniform
>     - Enable testing of control path (IGMP/MLD) in
>       mcast_vlan_snooping bridge
>     - Reorganize the code so that test instances (per bridge
>       type and configuration type) always come right after
>       the test, in order of {d,q,qvs}{4,6}{cfg,ctl}.
>       Then groups of selftests are at the end of the file.
>       Similarly adjust invocation order of the tests.
> 
>  .../testing/selftests/net/forwarding/Makefile |    1 +
>  .../net/forwarding/bridge_mdb_max.sh          | 1336 +++++++++++++++++
>  2 files changed, 1337 insertions(+)
>  create mode 100755 tools/testing/selftests/net/forwarding/bridge_mdb_max.sh
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


