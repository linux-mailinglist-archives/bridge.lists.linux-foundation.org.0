Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CB3621706
	for <lists.bridge@lfdr.de>; Tue,  8 Nov 2022 15:42:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 18F85813F2;
	Tue,  8 Nov 2022 14:42:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18F85813F2
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=OtzHTh38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RB8hIr-AlOYq; Tue,  8 Nov 2022 14:42:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id A3F7081413;
	Tue,  8 Nov 2022 14:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3F7081413
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30CD7C0077;
	Tue,  8 Nov 2022 14:42:54 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 770AAC002D
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:42:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E21E402F3
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:42:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E21E402F3
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OtzHTh38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZC5uCWH_p6lp for <bridge@lists.linux-foundation.org>;
 Tue,  8 Nov 2022 14:42:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 703C5401A0
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 703C5401A0
 for <bridge@lists.linux-foundation.org>; Tue,  8 Nov 2022 14:42:52 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id u24so22738882edd.13
 for <bridge@lists.linux-foundation.org>; Tue, 08 Nov 2022 06:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=QXljKXuwBMk+OsTizGOu0V1MtZuYBJCVki2QOtDb+JA=;
 b=OtzHTh38wbeW2+6DHRuT1bY8TboZWM4dFCb6TBS9e1+tDi1D1ZvCmpOlplrc1i+ztF
 ZX2vgGiyJyNktp8r4rmEw0fL28JUGOXaLQ1WRYWyZBlcDN+hz85qzuggWg18uTzRn4Av
 x+kj6HuZ9BlzqqabI6XxwdMRG/FkHVca3SD9ocKIgkTMvssmNPe7EjvTY6bOX7QTME/J
 0i9pHg4QjVRA6iSylbNkdmajOUOnbBRxr6nBREamUrtf6bR3QBcVH/pd/rJhS7Fvnn7c
 unTlRqhZDq+d45OkF1ZSFlGzY+WXRvR4nl8gYzAHN63JRF9DlY70TODN/DKcYyStYdfW
 peeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=QXljKXuwBMk+OsTizGOu0V1MtZuYBJCVki2QOtDb+JA=;
 b=bScwWZ5QzLO9rPlwRgOVDEUe/pMY7CkC5QrajQFHhtaQObNeF6PynHsWwwudQWfibL
 EsIr5ZGKARZBLo+tnf878LDGvLdCPydSe0E6AbYOvgyNMtDt/7ZaU/tHyC7LheQQeZZd
 4SnQ/52n3ZCtzBj+0Wygk6I1b2y6kgV/89SCDUq21BvZESiX5J4YV11Ag4RpE5WeGsBg
 rC2tIIlHnAP9nXx/cnamhFlpEJLCIfVhW+UfRlCnxrJyC156wLdEzgEUTPBQQ1VCphjT
 b2wOZgc3ArZxxXbLWeH0PkP3aJkYvCn7tvix5ZLHkXtTd2Htex34EoE+JHxXWV/dS5mR
 tp5A==
X-Gm-Message-State: ACrzQf2NgAtlaaYiDMQi9dSDOV7vIHeBI8LcGHTUIjViI5ksiJkRP+q3
 40OwEkrf4++8OaiMlBUUVFQ=
X-Google-Smtp-Source: AMsMyM5mnaRwuolrGoF+RUbfwg9sOFGg4s7CuPHbEwTis3aQLaY2HXbdtZFwQgQULpZ/QPa/1IELfw==
X-Received: by 2002:aa7:cc13:0:b0:453:52dc:1bbf with SMTP id
 q19-20020aa7cc13000000b0045352dc1bbfmr56255647edt.30.1667918570622; 
 Tue, 08 Nov 2022 06:42:50 -0800 (PST)
Received: from skbuf ([188.27.184.197]) by smtp.gmail.com with ESMTPSA id
 l2-20020a1709063d2200b0076ff600bf2csm4759244ejf.63.2022.11.08.06.42.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Nov 2022 06:42:50 -0800 (PST)
Date: Tue, 8 Nov 2022 16:42:48 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20221108144248.daycrsxaxvwokxfj@skbuf>
References: <cover.1667902754.git.petrm@nvidia.com>
 <9fb8b83ce2029c51c81c942f24ece789ae8fe1c1.1667902754.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9fb8b83ce2029c51c81c942f24ece789ae8fe1c1.1667902754.git.petrm@nvidia.com>
Cc: Ivan Vecera <ivecera@redhat.com>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 Jiri Pirko <jiri@nvidia.com>, Ido Schimmel <idosch@nvidia.com>,
 "Hans J . Schultz" <netdev@kapio-technology.com>,
 Eric Dumazet <edumazet@google.com>, mlxsw@nvidia.com,
 Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next 15/15] selftests: mlxsw: Add a test
 for invalid locked bridge port configurations
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

On Tue, Nov 08, 2022 at 11:47:21AM +0100, Petr Machata wrote:
> From: Ido Schimmel <idosch@nvidia.com>
> 
> Test that locked bridge port configurations that are not supported by
> mlxsw are rejected.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> Reviewed-by: Petr Machata <petrm@nvidia.com>
> Signed-off-by: Petr Machata <petrm@nvidia.com>
> ---

Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
