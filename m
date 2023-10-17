Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF917CBF65
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:30:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 362FB80FB6;
	Tue, 17 Oct 2023 09:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 362FB80FB6
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=GsYhVxYp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQfKxar0bEnY; Tue, 17 Oct 2023 09:29:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id CD3EF81076;
	Tue, 17 Oct 2023 09:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD3EF81076
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 7D49DC0DD3;
	Tue, 17 Oct 2023 09:29:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 61CD2C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:29:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AECF40949
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AECF40949
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=GsYhVxYp
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gm89zQSRRKlW for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:29:55 +0000 (UTC)
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3E65440438
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E65440438
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-32d569e73acso4894824f8f.1
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697534993; x=1698139793;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7YMg9UDth1zyfm6+o4IfDJ/TtjJPGuDHzs8URdUI/W4=;
 b=GsYhVxYpby3Kuos/bkVwIlCyHvwlTr0eyK1TfW46oJzeP3wBfvh1wE5caZsWM0syaV
 ztdrwC8ifRHrA1azBXBuLN2YLGXXsJfEdEP5luoymPguAclASfNzN8a8/x6SPQ1+O5wT
 Que6G3FkCPp1gYzwTq9kqop0j2oqLEb3oFypOc31E3t5100MHvieTnkzVqVVXyRDORra
 BmkefhNfUr4hVIfS6RUZjf6B+N75QGDMhiQcrsMNiGTqfF8WfO4nJBymLPIowmLUxE+m
 YoxlvrE7VylF/5YoaiXLWoO9i7B8OSNR8FQFbnF9xY1xh/1SMfe7gTi4LtqmsKMCrLNB
 xwhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697534993; x=1698139793;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7YMg9UDth1zyfm6+o4IfDJ/TtjJPGuDHzs8URdUI/W4=;
 b=lip3+DsvMqjtkryYHjQcHZTdK36tLyaf+xQ3Th2avp7o0lDTVUm55ZsQ2y83gpjLOb
 o1RdmwNWOHw6NSdGgUSQeWtO0tTdpg2Cc4ue3hyuiuxeMnj6/5lCNodJKJliWRAP4ahc
 zLrt1MMYg8i7c6VhMItcTYfEsBOVzrramlS4eEoPj+n1TEGsJ4Qy/ofpZaVu5lXeQzsT
 UL/OdF+c2qHEKjkDp1ItFA9QGCY+5m7iQmJHxnc0Ays4vxjFVFmmT97DmKYgdOc8PaLo
 lZy9J0e391Qw/wsDNJ6lY9f5lvPkKsNXDKzlaypqwpAHdvo4GYFDrvK5olUiyzXT3HPq
 Xxrg==
X-Gm-Message-State: AOJu0YzkuM0LkRsly3C7GHiJvW+cbubwas93axcKf44nwTqyanTmQrO1
 DdrWsk/fwpsCm/af9fGli+UJpQ==
X-Google-Smtp-Source: AGHT+IFDsjZx+xcrBdb/YKN8Q0pNK2MaviWpf1SGOQsJO3HnQW1ezvnUPi6p3f8EiCsJqnKZPvxa7A==
X-Received: by 2002:a5d:6a0b:0:b0:31f:ef77:67e4 with SMTP id
 m11-20020a5d6a0b000000b0031fef7767e4mr1309578wru.37.1697534993225; 
 Tue, 17 Oct 2023 02:29:53 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 q12-20020a5d658c000000b003198a9d758dsm1249471wru.78.2023.10.17.02.29.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:29:52 -0700 (PDT)
Message-ID: <4427a9f5-551d-db41-025e-6854c89628aa@blackwall.org>
Date: Tue, 17 Oct 2023 12:29:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-13-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-13-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 12/13] selftests: bridge_mdb: Use MDB
 get instead of dump
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

On 10/16/23 16:12, Ido Schimmel wrote:
> Test the new MDB get functionality by converting dump and grep to MDB
> get.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   .../selftests/net/forwarding/bridge_mdb.sh    | 184 +++++++-----------
>   1 file changed, 71 insertions(+), 113 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


