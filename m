Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78167A231D
	for <lists.bridge@lfdr.de>; Fri, 15 Sep 2023 17:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5567C41935;
	Fri, 15 Sep 2023 15:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5567C41935
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=UHH2QGaW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8cKG73LDU3hP; Fri, 15 Sep 2023 15:59:18 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E43BC41952;
	Fri, 15 Sep 2023 15:59:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E43BC41952
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 6677DC0DD3;
	Fri, 15 Sep 2023 15:59:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AF100C0032
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 15:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 829B64220E
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 15:59:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 829B64220E
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20230601.gappssmtp.com
 header.i=@networkplumber-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=UHH2QGaW
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_siYFCHwi6w for <bridge@lists.linux-foundation.org>;
 Fri, 15 Sep 2023 15:59:15 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 782ED4159C
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 15:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 782ED4159C
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-68fb85afef4so2218080b3a.1
 for <bridge@lists.linux-foundation.org>; Fri, 15 Sep 2023 08:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20230601.gappssmtp.com; s=20230601; t=1694793555;
 x=1695398355; darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=625PTN5iP3Dr6oBoYQ7/1bjc8m/xWKXKVAqc5lWfFNw=;
 b=UHH2QGaW1M0Uq580e7rcgmUjvBBoD98UvhLRSnvTY6F3uXVRywLO9gTvyFKyMn7Urv
 OvKHIdSmGn8Z3W1WKNr7HGp5Gfg+4AjRZVbo2kAwthLgYQkP2TJ1EQ/1/NOkBw/u/i+P
 PycAbOqPcXnjp6utal3hk8/+E2smFQ2KpXZSsQqIJU4QxmJoYyz6VW9uEP7pBRk6h8iq
 5XHJUchEl58OkdPRRgUA7OBt+yhcKlU4m3068/XtckJ32Xo6VTDjtkGiq/as5JAjvxq5
 49bsxlckCvFCO7B6/rAZifmchMLDgCFOCKr80uUI6E1wVGhGdS4pvvYZo3jtomZdZqZm
 lzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694793555; x=1695398355;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=625PTN5iP3Dr6oBoYQ7/1bjc8m/xWKXKVAqc5lWfFNw=;
 b=dAs8GyKpMk8pCuN3RYb+M3j2JRb1uYztkerFM4zSoK5NlQ6h1DvWWBk9+X6MxoQxM1
 Ij/r9PXCLfwSXTiB6ScqK2dj/VQyLOfltksNMAX1Dyy+BUeAbW+cA5bvRcAxBybdZXVj
 WHJTTsEEoiq2du3Oz3YJnZ/liu0a5FDE3WhmAbQWhlMk17jX5uH7urUVJhS4H0RPX4T8
 nPEDU2QrNmhcTTsfRv/D1tz92e6XCe2aLr2+eh5bMIn72o+ATnsKkLHFgflNKuWFwcMI
 MiSk9q3nhkN5EJFP4oVqH9BVgfkUULJ3aMM/3IxDI+jbvAQUZPNQq/Ll2qAF5AjNIJ8e
 9J4Q==
X-Gm-Message-State: AOJu0YwSiOUUPNWVlS6YwilzLDW1ktzy+oSJsKg2ZZAO3lM/L7bu+R4m
 XN0J1G3p7afPTK2hnyhoLODJqQ==
X-Google-Smtp-Source: AGHT+IHlQjsEpd/kcKbjiSPyEafUVB3sz9Jmtg4RIRoOVLIOycKkvsfjaWmAswtR1K0lVFYcnXh8Vw==
X-Received: by 2002:a05:6a20:3c86:b0:13d:df16:cf29 with SMTP id
 b6-20020a056a203c8600b0013ddf16cf29mr2803322pzj.15.1694793554716; 
 Fri, 15 Sep 2023 08:59:14 -0700 (PDT)
Received: from hermes.local (204-195-112-131.wavecable.com. [204.195.112.131])
 by smtp.gmail.com with ESMTPSA id
 u26-20020aa7849a000000b00686bef8e55csm3159946pfn.39.2023.09.15.08.59.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Sep 2023 08:59:14 -0700 (PDT)
Date: Fri, 15 Sep 2023 08:59:12 -0700
To: Andrea Claudi <aclaudi@redhat.com>
Message-ID: <20230915085912.78ffd25c@hermes.local>
In-Reply-To: <844947000ac7744a3b40b10f9cf971fd15572195.1694625043.git.aclaudi@redhat.com>
References: <cover.1694625043.git.aclaudi@redhat.com>
 <844947000ac7744a3b40b10f9cf971fd15572195.1694625043.git.aclaudi@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, David Ahern <dsahern@gmail.com>,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH iproute2-next 1/2] configure: add the --color
	option
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
From: Stephen Hemminger via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Stephen Hemminger <stephen@networkplumber.org>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Wed, 13 Sep 2023 19:58:25 +0200
Andrea Claudi <aclaudi@redhat.com> wrote:

> This commit allows users/packagers to choose a default for the color
> output feature provided by some iproute2 tools.
> 
> The configure script option is documented in the script itself and it is
> pretty much self-explanatory. The default value is set to "never" to
> avoid changes to the current ip, tc, and bridge behaviour.
> 
> Signed-off-by: Andrea Claudi <aclaudi@redhat.com>
> ---

More build time config is not the answer either.
Don't want complaints from distribution users about the change.
Needs to be an environment variable or config file.
