Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21276751D52
	for <lists.bridge@lfdr.de>; Thu, 13 Jul 2023 11:34:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E28A41C46;
	Thu, 13 Jul 2023 09:34:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E28A41C46
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=wAk1AWpz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sX0OsIHhkqma; Thu, 13 Jul 2023 09:34:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id F3DC041C26;
	Thu, 13 Jul 2023 09:34:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3DC041C26
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AF705C0DD4;
	Thu, 13 Jul 2023 09:34:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6526CC0032
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E2DC8272D
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:34:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E2DC8272D
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=wAk1AWpz
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JHlw536FCw_K for <bridge@lists.linux-foundation.org>;
 Thu, 13 Jul 2023 09:34:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75FC382897
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75FC382897
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 09:34:05 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-2b73564e98dso6489691fa.3
 for <bridge@lists.linux-foundation.org>; Thu, 13 Jul 2023 02:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1689240843; x=1691832843;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lMHT6UoXyT7yXa5NMQkYocKiTnpdFIDZ2yGmogMbjUw=;
 b=wAk1AWpzrbDeO7yqVK9IzXCcRdWswZfk3XyO72KiL17HaSy2JkRQThpYEX0JUpRVhO
 X+dnIvcbPWNUzOa9+/a7ou+f5x6K/r5mtKp58UORIA4U4kJST7lE2mnrhZP+r6R67vLN
 N2sq26vGqiJHLSZdrdGTENOwn2PN80WiryBg7UKOPpHuaVuxaY8v0fj+7NKOAyN95lMh
 7rjJyAmQUfdbHEL8bkG/1KlGEGuycuobPQDGJdwmWoeot6cG4Ok9LW2Fpw/hLUNe4RSS
 TNh8+P/+H6XyZFQF03/hElOLSrlH8XUPCvSRgui7u66rraMU08A/TGYA3b3M9MzNkEA8
 XddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689240843; x=1691832843;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lMHT6UoXyT7yXa5NMQkYocKiTnpdFIDZ2yGmogMbjUw=;
 b=RiZsuDiTziS152LMJvTErGy2dogYNKfkDotNQkufp59PdZtfIx8P9bwDaZrgX/ezmR
 fUN+NLiNeZU5e8m1fnngnTdVwbw107J5rpKFfdqjCc7Ou9swR9RIyIivrogrEAn6UEJc
 0/Z1gLpxGEJt+oa2qs1yG4CaYzmmz+j/9dfqAlOFmH/ojLivDO3vWAO5EFImVV6IQz0N
 Nrff+DKYLdswQNKxsXuHQhAabJF6kgTkrDGIdU5ONISl1TZFvm8dNzUfhNwlrj5XE2B2
 bzF/9nvZeQMosS/T4x9WJnCoy3nkbHtWOyfizbHstuWWn6jxNH6pQXLv6vjCX16qvt35
 RVrA==
X-Gm-Message-State: ABy/qLZkOgop3tKnz7YaBk//XX0vn/Zlc793VftdmdRHeSV6NrnjeONP
 Tjt0eNP0pgaR8aE62Hnu75BlnA==
X-Google-Smtp-Source: APBJJlHBOcJIRV3pPGjEDMRgsH9BXtIXzG76wRVu+Y+oswYkkhSvMhF45Al5NXaKjKNarpYinxyXmA==
X-Received: by 2002:a05:651c:8b:b0:2b6:e96c:5414 with SMTP id
 11-20020a05651c008b00b002b6e96c5414mr799760ljq.52.1689240843435; 
 Thu, 13 Jul 2023 02:34:03 -0700 (PDT)
Received: from [192.168.51.243] ([78.128.78.220])
 by smtp.gmail.com with ESMTPSA id
 a18-20020a2e88d2000000b002b6d7bcf665sm1429422ljk.71.2023.07.13.02.34.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Jul 2023 02:34:03 -0700 (PDT)
Message-ID: <c50ea6d9-2741-8dd3-a176-bee35388d229@blackwall.org>
Date: Thu, 13 Jul 2023 12:34:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230713070925.3955850-1-idosch@nvidia.com>
 <20230713070925.3955850-5-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230713070925.3955850-5-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, taspelund@nvidia.com, roopa@nvidia.com,
 edumazet@google.com, dsahern@gmail.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [RFC PATCH net-next 4/4] selftests: net: Add bridge
 backup port and backup nexthop ID test
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

On 13/07/2023 10:09, Ido Schimmel wrote:
> Add test cases for bridge backup port and backup nexthop ID, testing
> both good and bad flows.
> 
> Example truncated output:
> 
>   # ./test_bridge_backup_port.sh
>   [...]
>   Tests passed:  83
>   Tests failed:   0
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   tools/testing/selftests/net/Makefile          |   1 +
>   .../selftests/net/test_bridge_backup_port.sh  | 759 ++++++++++++++++++
>   2 files changed, 760 insertions(+)
>   create mode 100755 tools/testing/selftests/net/test_bridge_backup_port.sh
> 

Well explained
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

