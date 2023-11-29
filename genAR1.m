function X = genAR1(a, sigma2, N)

    X = zeros(N, 1);


    X(1) = normrnd(0, sqrt(sigma2));

    for t = 2:N
        epsilon_t = normrnd(0, sqrt(sigma2));
        X(t) = a * X(t-1) + epsilon_t;
    end
end
