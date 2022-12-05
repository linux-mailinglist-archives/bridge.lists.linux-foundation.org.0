Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A16427DE
	for <lists.bridge@lfdr.de>; Mon,  5 Dec 2022 12:55:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4E59400A4;
	Mon,  5 Dec 2022 11:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D4E59400A4
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=U+7fQMoW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jKwpYit_XZ9; Mon,  5 Dec 2022 11:55:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 1A47B404FE;
	Mon,  5 Dec 2022 11:55:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1A47B404FE
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BBB6DC007C;
	Mon,  5 Dec 2022 11:55:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 74FCFC002D
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EB6E404FE
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:55:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EB6E404FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vl2rxDEnBcpL for <bridge@lists.linux-foundation.org>;
 Mon,  5 Dec 2022 11:55:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5576D400A4
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5576D400A4
 for <bridge@lists.linux-foundation.org>; Mon,  5 Dec 2022 11:55:08 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id n20so27221301ejh.0
 for <bridge@lists.linux-foundation.org>; Mon, 05 Dec 2022 03:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=NBOGF8+aet6XcQembZ/mMbGiUrwTsb/R0mIXWdywGsE=;
 b=U+7fQMoWLlhqaTZGAW0g4SnUl4nQ4T8TVBumgF7yS+KLEJxHgU9B3F9C6SO1isw457
 EVxECdeUWqt+HX5Udad4fXM3XoCFElfc05/QzucjaaFpJNZgEZO+l7EavOPLmSwy3Z7U
 PZsWVpkwQkGBy1W5+P5rSuqSx1dhf383iw2ayVrfCaGRsGteCzDIjsEKmRDdzeDOb2oN
 AcGMppgg0Z+F4pRERQv9t2NcNa+onaWUWApajFJYkEU05BaWOqjZIuT4r3gFjcAtYX4/
 VCmbKxFS6fTQa5yu3LM/0lvTHDM/TLeC+YAUPZgHH2R7rtq95hStR7/AGsmpYEHRAzci
 MwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NBOGF8+aet6XcQembZ/mMbGiUrwTsb/R0mIXWdywGsE=;
 b=m7gViUyojq5sbYLGHyksZuB0L6ITBgTw6oo0D37Ta7zO8olZ22eeF82HW5RULELkIv
 kfeBpRw9MJ5khCNpu7TS0cb5N3rsGgzBQ+WbqZFPy0odf5qLsZ9kunDwswFQr1soRuz9
 lOtUYZkUAaJ1+iIYFMkOw51ZoPNxQjjpVkgVsMUnoI6krdEoIeTeO2hPD24LvdWLjNCs
 44LOcWkQxDqQxFSZOLB873NqEAQN2F5vNqJd4vVrAo2QPJ81017voZ3wCRUzq9N0RfCo
 BTbRJjKPCCwOJpsSnmM4N9nKQ0F7N5d1Lag41PgSFXwP8N7BJHk9OSpZlm/RilkfGLW2
 Hsiw==
X-Gm-Message-State: ANoB5pnjGEfOfnXoWRORY92oWt4X/+aELcZz0cQrfXGZqJiXCDIHGHSQ
 2AsYQPiDa2z2Jd+ZCcR3ba0BSh1XKisZkojAwRY=
X-Google-Smtp-Source: AA0mqf42Ezryk34OFFsHeqFlmobpp31nFpqR2UO3VacNcJL93eDDlbORJi7zcARoxre65ZzEdj1EeA==
X-Received: by 2002:a17:906:8282:b0:7c0:aa3b:9bd6 with SMTP id
 h2-20020a170906828200b007c0aa3b9bd6mr17316160ejx.454.1670241306512; 
 Mon, 05 Dec 2022 03:55:06 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 g15-20020a170906348f00b007bf86800a0asm6091933ejb.28.2022.12.05.03.55.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 05 Dec 2022 03:55:06 -0800 (PST)
Message-ID: <73405dec-e1ec-e581-ba8e-83bb8343d2b0@blackwall.org>
Date: Mon, 5 Dec 2022 13:55:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221205074251.4049275-1-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221205074251.4049275-1-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 0/8] bridge: mcast: Preparations for
 EVPN extensions
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

On 05/12/2022 09:42, Ido Schimmel wrote:
> This patchset was split from [1] and includes non-functional changes
> aimed at making it easier to add additional netlink attributes later on.
> Future extensions are available here [2].
> 
> The idea behind these patches is to create an MDB configuration
> structure into which netlink messages are parsed into. The structure is
> then passed in the entry creation / deletion call chain instead of
> passing the netlink attributes themselves. The same pattern is used by
> other rtnetlink objects such as routes and nexthops.
> 
> I initially tried to extend the current code, but it proved to be too
> difficult, which is why I decided to refactor it to the extensible and
> familiar pattern used by other rtnetlink objects.
> 
> Tested using existing selftests and using a new selftest that will be
> submitted together with the planned extensions.
> 
> No changes since initial RFC.
> 
> [1] https://lore.kernel.org/netdev/20221018120420.561846-1-idosch@nvidia.com/
> [2] https://github.com/idosch/linux/commits/submit/mdb_v1
> 
> Ido Schimmel (8):
>   bridge: mcast: Centralize netlink attribute parsing
>   bridge: mcast: Remove redundant checks
>   bridge: mcast: Use MDB configuration structure where possible
>   bridge: mcast: Propagate MDB configuration structure further
>   bridge: mcast: Use MDB group key from configuration structure
>   bridge: mcast: Remove br_mdb_parse()
>   bridge: mcast: Move checks out of critical section
>   bridge: mcast: Remove redundant function arguments
> 
>  net/bridge/br_mdb.c     | 312 +++++++++++++++++++---------------------
>  net/bridge/br_private.h |   7 +
>  2 files changed, 156 insertions(+), 163 deletions(-)
> 

As I also commented on the RFC, nice work! Allowing user-space to manipulate and manually
install such entries is a natural extension.

One thought (not a big deal) but it would've been ideal if we could initialize the config
struct once when parsing and then pass it around as a const argument. I know that its
arguments are currently passed to functions that don't expect const, but I *think* it
could be a small change.

Thanks,
 Nik

